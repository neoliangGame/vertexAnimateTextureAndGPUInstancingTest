using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

/// <summary>
/// 骨骼动画烘焙到贴图制作顶点帧动画
/// 配合GPUinstancing以达到大量动画同屏优化
/// 1.烘焙骨骼动画到贴图中；
/// 2.用shader读取动画贴图，并且通过GPUinstancing那一套接口
/// 3.使用：
///   a.烘焙阶段用SampleAnimationClip();
///     把顶点帧动画烘焙到动画贴图
///     把法线帧动画烘焙到法线贴图
///   b.运行阶段，用SetPropertyBlocks()和instanceMove();
///     要通过GPUInstancing这一套接口来设置，才能达到优化效果
///     并且每一帧都需要进行相应参数设置，一旦哪一帧不设置，其会变回默认值
/// </summary>
public class GPUinstancingTest : MonoBehaviour {

    public GameObject instancGO;
    public int insNumber = 900;
    GameObject[] GPUinsGOs;

    public GameObject sampleGO;
    public GameObject shareMeshGO;
    public AnimationClip sampleClip;

    [SerializeField]
    float maxFrame = 30f;
    [SerializeField]
    Vector3 boundsVector = Vector3.zero;

    float[] startFrame;
    float currentFrame = 0f;
    float speed = 20f;

	void Start () {
        SetPropertyBlocks();
        
        //SampleAnimationClip();
    }

    #region 对骨骼动画物体烘焙采样每帧顶点位置数据
    /*
     1.AnimationClip.SampleAnimation(GameObjectWithAnimationClip, frameTime);
        先对有对应动画片段的物体进行采样，即设置其物体当前为frameTime动画帧
     2.ShouldBakedMesh.GetComponent<SkinnedMeshRenderer>().BakeMesh(MeshForBake)
        把刚才带有动画物体对应的动画面片找出来
        并且对这物体的对应Mesh进行烘焙
        烘焙到传入的MeshForBake变量中
        此时带动画物体的frameTime帧时刻的Mesh顶点数据就在MeshForBake中了
    3.animaVertexColor = (verties[i] + bounds * 0.5) / bounds;
        把每帧的顶点数据写入对应Texture的列
        每一列按照顶点顺序写入每个顶点的数据，组成一列
        由于像素存储值在[0f,1f]区间，而顶点值有超过1的，有小于1的
        对烘焙到的当前帧顶点做以下处理：
        a.对x,y,z轴整体向正方向偏移一定量，让其都>0（用bounds，比较精确）
            这里事先循环一遍帧动画求出每帧中最大的bounds范围
        b.对x,y,z偏移后的值整体压缩一定量，压缩到[0f,1f]区间
        同时记录偏移量和压缩量，在shader中取出后需要反向求原值
    4.在shader中动态改变顶点位置的话，其法线信息是保持原始静止时候的值；
        所以，在烘焙动画顶点时，同时把法线顶点也一起烘焙进去
         */
    void SampleAnimationClip()
    {
        
        int FPS = 30;
        float step = sampleClip.length / FPS;
        float currentTime = 0f;

        List<Vector3> verties = new List<Vector3>();
        List<Vector3> originVerties = new List<Vector3>();
        List<Vector3> normals = new List<Vector3>();
        shareMeshGO.GetComponent<SkinnedMeshRenderer>().sharedMesh.GetVertices(originVerties);

        int widthTime = (int)(sampleClip.length * FPS);
        int heightVerties = originVerties.Count;
        Texture2D animaTex = new Texture2D(widthTime, heightVerties, TextureFormat.RGBAHalf, false);
        Texture2D normalTex = new Texture2D(widthTime, heightVerties, TextureFormat.ARGB4444, false);

        int cIndex = 0;
        Vector3 aniVector = Vector3.zero;
        //Vector3 normalVector = Vector3.up;
        Mesh bakeM = new Mesh();

        Bounds bounds = shareMeshGO.GetComponent<SkinnedMeshRenderer>().bounds;
        float boundsMaxX = bounds.max.x;
        float boundsMaxY = bounds.max.y;
        float boundsMaxZ = bounds.max.z;
        float boundsMinX = bounds.min.x;
        float boundsMinY = bounds.min.y;
        float boundsMinZ = bounds.min.z;
        while (currentTime < sampleClip.length)
        {
            cIndex++;
            currentTime = step * cIndex;
            sampleClip.SampleAnimation(sampleGO, currentTime);
            shareMeshGO.GetComponent<SkinnedMeshRenderer>().BakeMesh(bakeM);
            bounds = bakeM.bounds;

            boundsMaxX = (boundsMaxX > bounds.max.x) ? boundsMaxX : bounds.max.x;
            boundsMaxY = (boundsMaxY > bounds.max.y) ? boundsMaxY : bounds.max.y;
            boundsMaxZ = (boundsMaxZ > bounds.max.z) ? boundsMaxZ : bounds.max.z;
            boundsMinX = (boundsMinX < bounds.min.x) ? boundsMinX : bounds.min.x;
            boundsMinY = (boundsMinY < bounds.min.y) ? boundsMinY : bounds.min.y;
            boundsMinZ = (boundsMinZ < bounds.min.z) ? boundsMinZ : bounds.min.z;
        }
        boundsVector = new Vector3(boundsMaxX - boundsMinX, boundsMaxY- boundsMinY, boundsMaxZ- boundsMinZ);
        Debug.Log("boundsVector:" + boundsVector.ToString());
        Vector3 offsetV = boundsVector * 0.5f;
        Vector3 resizeV = new Vector3(1f/boundsVector.x, 1f/boundsVector.y, 1f/boundsVector.z);

        cIndex = 0;
        currentTime = 0;
        while (currentTime < sampleClip.length)
        {
            sampleClip.SampleAnimation(sampleGO, currentTime);
            shareMeshGO.GetComponent<SkinnedMeshRenderer>().BakeMesh(bakeM);
            verties = new List<Vector3>();
            bakeM.GetVertices(verties);
            bakeM.GetNormals(normals);
            for(int i = 0;i < verties.Count; i++)
            {
                aniVector = new Vector3(
                    (verties[i].x + offsetV.x) * resizeV.x,
                    (verties[i].y + offsetV.y) * resizeV.y,
                    (verties[i].z + offsetV.z) * resizeV.z);// (verties[i] + offsetV) * 0.02f;// (verties[i]- originVerties[i]) * 0.05f;
                animaTex.SetPixel(cIndex, i, new Color(aniVector.x, aniVector.y, aniVector.z, 1));

                normalTex.SetPixel(cIndex, i, new Color(normals[i].x, normals[i].y, normals[i].z, 1));

            }
            cIndex++;
            currentTime = step * cIndex;
        }
        maxFrame = cIndex;
        SaveDrawPicture(ref animaTex, (Application.dataPath + "/animaTex.png"));
        SaveDrawPicture(ref normalTex, (Application.dataPath + "/normalTex.png"));
        Debug.Log("maxFrame:" + maxFrame);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="animaTex"></param>
    /// <param name="path"></param>
    public void SaveDrawPicture(ref Texture2D animaTex, string path)
    {
        byte[] bytes = animaTex.EncodeToPNG();
        FileStream file = File.Open(path, FileMode.Create);
        BinaryWriter bw = new BinaryWriter(file);
        bw.Write(bytes);
        file.Flush();
        file.Close();
    }
    #endregion

	void Update () {
        instanceMove();
    }

    #region GPU instancing Texture顶点帧动画
    void SetPropertyBlocks()
    {
        GPUinsGOs = new GameObject[insNumber];
        //MaterialPropertyBlock mpb = new MaterialPropertyBlock();
        startFrame = new float[insNumber];
        for (int i = 1; i < insNumber; i++)
        {
            GPUinsGOs[i] = GameObject.Instantiate(instancGO);
            GPUinsGOs[i].transform.parent = instancGO.transform.parent;
            GPUinsGOs[i].name = "test" + i;
            GPUinsGOs[i].transform.position = new Vector3(
                Random.Range(-800f, 800f), 0f, Random.Range(-800f, 800f));
            startFrame[i] = Random.Range(0f, maxFrame);
            //mpb.SetFloat("_AnimaStart", Random.Range(0f, maxFrame));
            //mpb.SetVector("_Bounds", new Vector4(boundsVector.x, boundsVector.y, boundsVector.z,1f));

            //GPUinsGOs[i].GetComponent<MeshRenderer>().SetPropertyBlock(mpb);
        }
        startFrame[0] = 0f;
        GPUinsGOs[0] = instancGO;
    }

    void instanceMove()
    {
        currentFrame += Time.deltaTime * speed;
        currentFrame = (currentFrame > maxFrame) ? currentFrame - maxFrame : currentFrame;
        

        MaterialPropertyBlock mpb = new MaterialPropertyBlock();
        //mpb.SetFloat("_AnimaStart", Random.Range(0f, maxFrame));
        mpb.SetVector("_Bounds", new Vector4(boundsVector.x, boundsVector.y, boundsVector.z, 1f));
        for (int i = 0; i < GPUinsGOs.Length; i++)
        {
            float animaFrame = currentFrame + startFrame[i];
            animaFrame = (animaFrame > maxFrame) ? animaFrame - maxFrame : animaFrame;
            mpb.SetFloat("_AnimaFrame", animaFrame);
            GPUinsGOs[i].GetComponent<MeshRenderer>().SetPropertyBlock(mpb);
        }
    }
    #endregion

}
