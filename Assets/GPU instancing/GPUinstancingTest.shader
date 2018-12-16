Shader "neo/GPUinstancingTest"
{
	Properties
	{
		_MainTex("Texture", 2D) = "white" {}
		_AnimaTex("Animation Texture", 2D) = "white" {}
		_NormalTex("Normal Texture", 2D) = "white" {}
		_Color("Color", Color) = (1, 1, 1, 1)
		_AnimaFrame("animation current frame", Float) = 0
		//_AnimaStart("animation start frame", Float) = 0
		_Bounds("Bounds", Vector) = (1,1,1,1)
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque" }
		LOD 100

		Pass
		{
			Tags{ "LightMode" = "ForwardBase" }
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#pragma multi_compile_fwdbase
			#include "UnityCG.cginc"
			
			struct appdata
			{
				float4 vertex : POSITION;
				half3 normal : NORMAL;
				float2 uv : TEXCOORD0;
				uint id : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float4 light : COLOR0;
				float2 uv : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID // necessary only if you want to access instanced properties in fragment Shader.
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			sampler2D _AnimaTex;
			float4 _AnimaTex_ST;
			float2 _AnimaTex_TexelSize;

			sampler2D _NormalTex;
			float4 _NormalTex_ST;
			float2 _NormalTex_TexelSize;

			//设置需要从用GPUInstancing特性并且有个体差异的变量
			//这个每帧都需要设置，如果哪一帧不设置，那一帧的值就会变成默认
			UNITY_INSTANCING_CBUFFER_START(MyProperties)
				UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
				UNITY_DEFINE_INSTANCED_PROP(vector, _Bounds)
				UNITY_DEFINE_INSTANCED_PROP(float, _AnimaFrame)
				//UNITY_DEFINE_INSTANCED_PROP(float, _AnimaStart)
			UNITY_INSTANCING_CBUFFER_END

			v2f vert(appdata v)
			{
				v2f o;

				//获取C#脚本中动态设置的Block值
				UNITY_SETUP_INSTANCE_ID(v);
				float aniFrame = UNITY_ACCESS_INSTANCED_PROP(_AnimaFrame);
				float4 bounds = UNITY_ACCESS_INSTANCED_PROP(_Bounds);

				//计算顶点动画贴图和法线贴图具体位置
				//floor(aniFrame+ 0.1)为了精度考虑
				//_AnimaTex_TexelSize.x为动画贴图时间轴单位长度
				//因为贴图传到shader中，访问的下标变成[0,1]范围浮点数，不是整数下标
				//所以需要对应传入的整数下标乘以其贴图的单位长度
				float aniU = floor(aniFrame+ 0.1) * _AnimaTex_TexelSize.x;
				//获取此帧的当前顶点的贴图位置
				//可以在vertex着色器传入值传入顶点序列uint id : SV_VertexID;
				//这个序列与Mesh中顶点的序列一致
				//之所以(v.id + 0.5)，是为了考虑精度问题
				float aniV = (v.id + 0.5) * _AnimaTex_TexelSize.y;

				float4 offset = tex2Dlod(_AnimaTex, float4(aniU, aniV,0,0));
				float4 normal = tex2Dlod(_NormalTex, float4(aniU, aniV, 0, 0));

				offset.x = offset.x * bounds.x - bounds.x * 0.5;
				offset.y = offset.y * bounds.y - bounds.y * 0.5;
				offset.z = offset.z * bounds.z - bounds.z * 0.5;
				offset.a = v.vertex.a;


				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o); // necessary only if you want to access instanced properties in the fragment Shader.
				
				o.vertex = UnityObjectToClipPos(offset);// (v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				

				half3 lightDir = normalize(ObjSpaceLightDir(offset));// (v.vertex));
				half3 normalDir = normalize(normal);
				o.light = min(dot(normalDir, lightDir) * 0.5 + 0.5, 1);
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i); // necessary only if any instanced properties are going to be accessed in the fragment Shader.
				float4 insCol = UNITY_ACCESS_INSTANCED_PROP(_Color);
				fixed4 col = tex2D(_MainTex, i.uv);
				return col * insCol * i.light;
			}
			ENDCG
		}
	}
}