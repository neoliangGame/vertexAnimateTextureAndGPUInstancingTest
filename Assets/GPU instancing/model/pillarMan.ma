//Maya ASCII 2015 scene
//Name: pillarMan.ma
//Last modified: Sat, Dec 15, 2018 03:33:27 PM
//Codeset: 936
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -21.525253675057527 8.1204859097840583 -17.135440806138359 ;
	setAttr ".r" -type "double3" -8.73835272397619 -1566.9999999999491 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.502193566371336;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.18145769834518433 2.04648756980896 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pillarMan";
	setAttr ".t" -type "double3" 0 5 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pillarManShape" -p "pillarMan";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18985820561647415 0.30250026285648346 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pillarManShapeOrig" -p "pillarMan";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.38098896 0.57023358
		 0.42473212 0.56820297 0.42981067 0.6212281 0.25921962 0.53973663 0.3809081 0.56168711
		 0.42473567 0.56107008 0.30306214 0.70772278 0.25921962 0.7077229 0.37565324 0.4010042
		 0.41948372 0.40027988 0.37565202 0.23273337 0.41949439 0.23273632 0.086566836 0.78924119
		 0.13040835 0.78924465 0.13040712 0.83405411 0.086563438 0.83405095 0.4036513 0.89042181
		 0.43868563 0.83405495 0.44749388 0.90783882 0.4036513 0.90783882 0.42398059 0.87789571
		 0.42398876 0.83405387 0.29801309 0.8778969 0.29801336 0.83405435 0.13040766 0.87789655
		 0.44749388 0.89042181 0.013573229 0.24480814 0.13527432 0.24480879 0.13527422 0.36019158
		 0.013572633 0.36019111 0.13527417 0.48189276 0.43866965 0.87789965 0.24444219 0.36019173
		 0.24444202 0.481893 0.36614388 0.36019081 0.60646665 0.12251627 0.24444199 0.24480879
		 0.36614305 0.24480778 0.4978922 0.88993883 0.54173481 0.88993883 0.54173481 0.90735596
		 0.51737362 0.87789881 0.53222024 0.83405387 0.53222573 0.87789595 0.67194653 0.83405435
		 0.67194629 0.87789667 0.82564008 0.83405423 0.82563984 0.87789738 0.86948276 0.83405435
		 0.32053781 0.36989242 0.82564008 0.78924465 0.8694827 0.78924453 0.76948714 0.71981126
		 0.72564483 0.71981126 0.72564507 0.55182505 0.56988895 0.62531435 0.53131342 0.56820297
		 0.57505429 0.57030356 0.53131485 0.55863643 0.57514471 0.55933464 0.53657424 0.40014076
		 0.5804044 0.40087867 0.5365755 0.23273811 0.58041817 0.23273838 0.47802392 0.5963912
		 0.52623713 0.62122786 0.68514335 0.16732602 0.72614843 0.34103674 0.51736218 0.78924453
		 0.4386856 0.78924465 0.69401526 0.33531213 0.48752111 0.55864751 0.4978922 0.90735596
		 0.51736218 0.83405495 0.7694875 0.55182505 0.6363079 0.55629969 0.46852684 0.56108224
		 0.48752111 0.40012974 0.59251356 0.38839754 0.53222024 0.78924465 0.64580512 0.36017942
		 0.49994522 0.84318089 0.45610267 0.84318089 0.68514335 0.12251577 0.42398879 0.78924453
		 0.62388378 0.1133897 0.46853694 0.40027213 0.4875218 0.23273796 0.32053763 0.53742522
		 0.67194653 0.78924453 0.69909668 0.38839769 0.49994522 0.87525392 0.45610273 0.87525392
		 0.36438042 0.53742528 0.29801327 0.78924429 0.29801315 0.74540186 0.46854794 0.23273945
		 0.46579444 0.16732596 0.3030622 0.72241968 0.46579444 0.12251595 0.72614843 0.49955434
		 0.30306214 0.53973663 0.38615811 0.62531328 0.59759486 0.33531219 0.36438048 0.69823599
		 0.66772568 0.11338919 0.32053781 0.69823599 0.72564483 0.73466951 0.48752207 0.18889534
		 0.60646665 0.16732596 0.71156716 0.11339238 0.71156967 0.08131963 0.63630825 0.39548886
		 0.59251356 0.39548889 0.6677264 0.081316173 0.53657568 0.18889552 0.69909632 0.3979229
		 0.65530217 0.39792287 0.62388331 0.081316739 0.58725435 0.55629951 0.59176981 0.16732596
		 0.59176981 0.12251607 0.76948714 0.73466951 0.36438048 0.36989257 0.70000124 0.12251601
		 0.70000118 0.16732596 0.70435542 0.55644047 0.65530229 0.55644047 0.63630825 0.72383225
		 0.58725435 0.72383225 0.58004069 0.081317395 0.58004093 0.11339042 0.8256402 0.7454021
		 0.32053781 0.73354554 0.83972746 0.12251601 0.83972746 0.16732596 0.7043556 0.72383225
		 0.65530205 0.72383225 0.29818895 0.16732596 0.29818875 0.12251607 0.99342102 0.12251607
		 0.99342114 0.16732596 0.24444142 0.59727603 0.13527371 0.59727561 0.36438036 0.73354554
		 0.76999098 0.1736449 0.16793683 0.16203678 0.16793683 0.20587945 0.72614843 0.1736449
		 0.13527437 0.12310737 0.21177948 0.20587945 0.25921968 0.72242004 0.21177948 0.16203678
		 0.24444202 0.12310731 0.46855068 0.18889675 0.76999098 0.49955434 0.76999098 0.34103674
		 0.41949713 0.18889374 0.13040733 0.74540234 0.72614843 0.53729784 0.76999098 0.53729784
		 0.42398879 0.7454021 0.67194641 0.74540174 0.53222024 0.74540234;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[18]" -type "float3" 0 0.17326774 -0.2421338 ;
	setAttr ".pt[19]" -type "float3" -0.36291543 0.17326774 -0.2421338 ;
	setAttr ".pt[20]" -type "float3" -0.36291543 0.11626881 -0.2421338 ;
	setAttr ".pt[21]" -type "float3" 0 0.11626881 -0.2421338 ;
	setAttr ".pt[22]" -type "float3" -0.36291543 0.11626881 0.2421338 ;
	setAttr ".pt[23]" -type "float3" 0 0.11626881 0.2421338 ;
	setAttr ".pt[24]" -type "float3" -0.36291543 0.17326774 0.2421338 ;
	setAttr ".pt[25]" -type "float3" 0 0.17326774 0.2421338 ;
	setAttr -s 82 ".vt[0:81]"  -0.5 -3.36053658 0 0.5 -3.36053658 0 -0.5 -2.79334807 1.099618554
		 0.5 -2.79334807 1.099618554 -0.5 1.038225174 0.89726222 0.5 1.038225174 0.89726222
		 -0.5 2.060286522 0.89726222 0.5 2.060286522 0.89726222 -0.5 3 0.5 0.5 3 0.5 -0.5 3 -0.5
		 0.5 3 -0.5 -0.5 2.060286522 -0.89726222 0.5 2.060286522 -0.89726222 -0.5 1.038225174 -0.89726222
		 0.5 1.038225174 -0.89726222 -0.5 -2.79334807 -1.099618554 0.5 -2.79334807 -1.099618554
		 -1.38793302 3 1.24499655 1.38793302 3 1.24499655 1.38793302 5.63175106 1.24499655
		 -1.38793302 5.63175106 1.24499655 1.38793302 5.63175106 -1.24499655 -1.38793302 5.63175106 -1.24499655
		 1.38793302 3 -1.24499655 -1.38793302 3 -1.24499655 -0.5 -4.0041666031 1.21551681
		 0.5 -4.0041666031 1.21551681 -0.5 1.038225174 7.92872334 0.5 1.038225174 7.92872334
		 0.5 2.060286522 7.92872334 -0.5 2.060286522 7.92872334 -0.5 2.060286522 -7.92872334
		 0.5 2.060286522 -7.92872334 0.5 1.038225174 -7.92872334 -0.5 1.038225174 -7.92872334
		 0.5 -4.0041666031 -1.21551681 -0.5 -4.0041666031 -1.21551681 -0.5 -11.65504456 0.21661752
		 0.5 -11.65504456 0.21661752 0.5 -11.65504456 1.3354733 -0.5 -11.65504456 1.3354733
		 -0.5 -11.65504456 -0.21661752 0.5 -11.65504456 -0.21661752 -0.5 -11.65504456 -1.3354733
		 0.5 -11.65504456 -1.3354733 0.5 2.060286522 4.10583544 0.5 1.038225174 4.10583544
		 -0.5 1.038225174 4.10583544 -0.5 2.060286522 4.10583544 0.5 2.060286522 -4.42314863
		 -0.5 2.060286522 -4.42314863 -0.5 1.038225174 -4.42314863 0.5 1.038225174 -4.42314863
		 0.5 2.060286522 1.23248196 0.5 1.038225174 1.23248196 -0.5 1.038225174 1.23248196
		 -0.5 2.060286522 1.23248196 0.5 2.060286522 -1.23615408 -0.5 2.060286522 -1.23615408
		 -0.5 1.038225174 -1.23615408 0.5 1.038225174 -1.23615408 0.5 -4.16590786 1.21551681
		 0.5 -4.16590786 0.21661752 -0.5 -4.16590786 0.21661752 -0.5 -4.16590786 1.21551681
		 0.5 -4.22142506 -0.21661752 0.5 -4.22142506 -1.21551681 -0.5 -4.22142506 -1.21551681
		 -0.5 -4.22142506 -0.21661752 0.5 -7.8338151 1.3354733 0.5 -7.8338151 0.21661752 -0.5 -7.8338151 0.21661752
		 -0.5 -7.8338151 1.3354733 0.5 -7.83703041 -0.21661752 0.5 -7.83703041 -1.3354733
		 -0.5 -7.83703041 -1.3354733 -0.5 -7.83703041 -0.21661752 0.5 2.26845169 0.5 -0.5 2.26845169 0.5
		 -0.5 2.26845169 -0.5 0.5 2.26845169 -0.5;
	setAttr -s 163 ".ed[0:162]"  0 1 0 2 3 0 4 5 0 6 7 0 8 9 0 10 11 0 12 13 0
		 14 15 0 16 17 0 0 2 1 1 3 1 2 4 0 3 5 0 4 6 1 5 7 1 6 79 0 7 78 0 10 80 0 11 81 0
		 12 14 1 13 15 1 14 16 0 15 17 0 16 0 1 17 1 1 17 3 1 15 5 1 13 7 1 11 9 0 16 2 1
		 14 4 1 12 6 1 10 8 0 8 18 0 9 19 0 18 19 0 19 20 0 21 20 0 18 21 0 20 22 0 23 22 0
		 21 23 0 11 24 0 22 24 0 10 25 0 25 24 0 23 25 0 24 19 0 25 18 0 0 26 1 1 27 1 26 27 1
		 27 3 0 26 2 0 4 56 0 5 55 0 28 29 0 7 54 0 29 30 0 6 57 0 31 30 0 28 31 0 12 59 0
		 13 58 0 32 33 0 15 61 0 33 34 0 14 60 0 35 34 0 32 35 0 1 36 1 17 36 0 0 37 1 37 36 1
		 16 37 0 0 64 0 1 63 0 38 39 0 27 62 0 39 40 0 26 65 0 41 40 0 38 41 0 0 69 0 1 66 0
		 42 43 0 37 68 0 42 44 0 36 67 0 44 45 0 43 45 0 46 30 0 47 29 0 46 47 1 48 28 0 47 48 1
		 49 31 0 48 49 1 49 46 1 50 33 0 51 32 0 50 51 1 52 35 0 51 52 1 53 34 0 52 53 1 53 50 1
		 54 46 0 55 47 0 54 55 1 56 48 0 55 56 1 57 49 0 56 57 1 57 54 1 58 50 0 59 51 0 58 59 1
		 60 52 0 59 60 1 61 53 0 60 61 1 61 58 1 62 70 0 63 71 0 62 63 1 64 72 0 63 64 1 65 73 0
		 64 65 1 65 62 1 66 74 0 67 75 0 66 67 1 68 76 0 67 68 1 69 77 0 68 69 1 69 66 1 70 40 0
		 71 39 0 70 71 1 72 38 0 71 72 1 73 41 0 72 73 1 73 70 1 74 43 0 75 45 0 74 75 1 76 44 0
		 75 76 1 77 42 0 76 77 1 77 74 1 78 9 0 79 8 0 78 79 1 80 12 0 79 80 1 81 13 0 80 81 1
		 81 78 1;
	setAttr -s 83 -ch 326 ".fc[0:82]" -type "polyFaces" 
		f 4 51 52 -2 -54
		mu 0 4 0 1 2 102
		f 4 1 12 -3 -12
		mu 0 4 3 101 6 7
		f 4 56 58 -61 -62
		mu 0 4 12 13 14 15
		f 4 3 16 157 -16
		mu 0 4 16 25 18 19
		f 4 35 36 -38 -39
		mu 0 4 26 27 28 29
		f 4 37 39 -41 -42
		mu 0 4 30 28 32 33
		f 4 40 43 -46 -47
		mu 0 4 34 32 36 37
		f 4 161 160 -7 -159
		mu 0 4 38 39 40 72
		f 4 64 66 -69 -70
		mu 0 4 48 46 50 51
		f 4 7 22 -9 -22
		mu 0 4 52 53 54 74
		f 4 8 71 -74 -75
		mu 0 4 55 65 56 57
		f 3 -25 25 -11
		mu 0 3 64 65 2
		f 4 -26 -23 26 -13
		mu 0 4 2 65 68 69
		f 4 -27 -21 27 -15
		mu 0 4 69 68 73 17
		f 4 -28 -161 162 -17
		mu 0 4 17 73 81 82
		f 4 -48 -44 -40 -37
		mu 0 4 27 36 32 28
		f 3 9 -30 23
		mu 0 3 80 103 70
		f 4 29 11 -31 21
		mu 0 4 70 103 109 66
		f 4 30 13 -32 19
		mu 0 4 66 109 35 83
		f 4 31 15 159 158
		mu 0 4 83 35 85 105
		f 4 48 38 41 46
		mu 0 4 142 143 30 33
		f 4 4 34 -36 -34
		mu 0 4 146 147 27 149
		f 4 -6 44 45 -43
		mu 0 4 150 152 153 36
		f 4 -29 42 47 -35
		mu 0 4 147 150 36 27
		f 4 32 33 -49 -45
		mu 0 4 152 146 149 153
		f 4 77 79 -82 -83
		mu 0 4 154 96 11 157
		f 3 10 -53 -51
		mu 0 3 64 2 1
		f 3 -10 49 53
		mu 0 3 103 80 78
		f 4 2 55 111 -55
		mu 0 4 7 6 98 151
		f 4 14 57 109 -56
		mu 0 4 69 17 21 84
		f 4 -4 59 114 -58
		mu 0 4 17 31 20 21
		f 4 -14 54 113 -60
		mu 0 4 35 109 120 121
		f 4 6 63 117 -63
		mu 0 4 41 73 42 43
		f 4 20 65 122 -64
		mu 0 4 73 68 79 42
		f 4 -8 67 121 -66
		mu 0 4 53 52 122 107
		f 4 -20 62 119 -68
		mu 0 4 66 83 124 125
		f 3 24 70 -72
		mu 0 3 65 64 56
		f 4 -86 87 89 -91
		mu 0 4 87 108 115 62
		f 3 -24 74 -73
		mu 0 3 80 70 90
		f 4 0 76 127 -76
		mu 0 4 144 133 106 104
		f 4 50 78 125 -77
		mu 0 4 64 1 5 76
		f 4 -52 80 130 -79
		mu 0 4 1 0 4 5
		f 4 -50 75 129 -81
		mu 0 4 78 80 112 113
		f 4 -1 83 138 -85
		mu 0 4 160 159 100 155
		f 4 72 86 137 -84
		mu 0 4 80 90 116 117
		f 4 73 88 135 -87
		mu 0 4 57 56 58 59
		f 4 -71 84 133 -89
		mu 0 4 56 64 71 58
		f 4 -94 91 -59 -93
		mu 0 4 94 23 14 13
		f 4 -96 92 -57 -95
		mu 0 4 95 94 13 158
		f 4 -98 94 61 -97
		mu 0 4 99 97 138 139
		f 4 -99 96 60 -92
		mu 0 4 23 22 24 14
		f 4 -102 99 -65 -101
		mu 0 4 45 44 46 47
		f 4 -104 100 69 -103
		mu 0 4 135 134 140 141
		f 4 -106 102 68 -105
		mu 0 4 89 162 132 50
		f 4 -107 104 -67 -100
		mu 0 4 44 89 50 46
		f 4 -110 107 93 -109
		mu 0 4 84 21 23 94
		f 4 -112 108 95 -111
		mu 0 4 161 84 94 95
		f 4 -114 110 97 -113
		mu 0 4 121 120 97 99
		f 4 -115 112 98 -108
		mu 0 4 21 20 22 23
		f 4 -118 115 101 -117
		mu 0 4 43 42 44 45
		f 4 -120 116 103 -119
		mu 0 4 125 124 134 135
		f 4 -122 118 105 -121
		mu 0 4 79 163 162 89
		f 4 -123 120 106 -116
		mu 0 4 42 79 89 44
		f 4 -126 123 141 -125
		mu 0 4 76 5 9 86
		f 4 -128 124 143 -127
		mu 0 4 104 106 88 93
		f 4 -130 126 145 -129
		mu 0 4 113 112 75 119
		f 4 -131 128 146 -124
		mu 0 4 5 4 8 9
		f 4 -134 131 149 -133
		mu 0 4 58 71 77 60
		f 4 -136 132 151 -135
		mu 0 4 59 58 60 61
		f 4 -138 134 153 -137
		mu 0 4 117 116 126 127
		f 4 -139 136 154 -132
		mu 0 4 155 100 67 156
		f 4 -142 139 -80 -141
		mu 0 4 86 9 11 96
		f 4 -144 140 -78 -143
		mu 0 4 93 88 49 123
		f 4 -146 142 82 -145
		mu 0 4 119 75 128 129
		f 4 -147 144 81 -140
		mu 0 4 9 8 10 11
		f 4 -150 147 90 -149
		mu 0 4 60 77 87 62
		f 4 -152 148 -90 -151
		mu 0 4 61 60 62 63
		f 4 -154 150 -88 -153
		mu 0 4 127 126 136 137
		f 4 -155 152 85 -148
		mu 0 4 156 67 148 145
		f 4 -158 155 -5 -157
		mu 0 4 85 131 130 118
		f 4 -160 156 -33 17
		mu 0 4 105 85 118 114
		f 4 5 18 -162 -18
		mu 0 4 114 111 110 105
		f 4 -163 -19 28 -156
		mu 0 4 82 81 91 92;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "jointRoot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 6.6 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5999999999999996 0 1;
	setAttr ".radi" 0.5223295030246764;
createNode joint -n "jointRightHand1" -p "jointRoot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0 1.1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5999999999999996 1.1000000000000001 1;
	setAttr ".radi" 0.61151571495052282;
createNode joint -n "jointRighthand2" -p "jointRightHand1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5999999999999996 4.0999999999999996 1;
	setAttr ".radi" 0.61151571495052282;
createNode joint -n "jointLeftHand1" -p "jointRoot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0 -1.1 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5999999999999996 -1.1000000000000001 1;
	setAttr ".radi" 0.61385511616901323;
createNode joint -n "jointLeftHand2" -p "jointLeftHand1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0 -3.3 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.5999999999999996 -4.4000000000000004 1;
	setAttr ".radi" 0.61385511616901323;
createNode joint -n "jointAss" -p "jointRoot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -4.6 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2 0 1;
	setAttr ".radi" 0.53313749561680179;
createNode joint -n "jointRightLeg1" -p "jointAss";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.2 0.8 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.80000000000000004 0.80000000000000004 1;
	setAttr ".radi" 0.56838636825655398;
createNode joint -n "jointRightLeg2" -p "jointRightLeg1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -3.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.7000000000000002 0.80000000000000004 1;
	setAttr ".radi" 0.56838636825655398;
createNode joint -n "jointLeftLeg1" -p "jointAss";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.25 -0.8 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.75 -0.80000000000000004 1;
	setAttr ".radi" 0.57393755002996616;
createNode joint -n "jointLeftLeg2" -p "jointLeftLeg1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -3.5 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.75 -0.80000000000000004 1;
	setAttr ".radi" 0.57393755002996616;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	setAttr -s 82 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.027353798486374547;
	setAttr ".wl[0].w[5]" 0.97264313697814941;
	setAttr ".wl[0].w[6]" 3.0645354760384773e-006;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.0039215683937072754;
	setAttr ".wl[1].w[5]" 0.99607843160629272;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.00039684999914334001;
	setAttr ".wl[2].w[5]" 0.99960285425186157;
	setAttr ".wl[2].w[6]" 2.9574899508769824e-007;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.0031372247186218262;
	setAttr ".wl[3].w[5]" 0.99686276912689209;
	setAttr ".wl[3].w[6]" 6.1544860841249105e-009;
	setAttr -s 2 ".wl[4].w[0:1]"  0.83529411256313324 0.16470588743686676;
	setAttr -s 2 ".wl[5].w[0:1]"  0.86666665971279144 0.13333334028720856;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.89411599341146708;
	setAttr ".wl[6].w[1]" 0.10588398575782776;
	setAttr ".wl[6].w[3]" 2.08307051079119e-008;
	setAttr -s 2 ".wl[7].w[0:1]"  0.86274509131908417 0.13725490868091583;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.99999958276748657;
	setAttr ".wl[8].w[1]" 3.2336379615536226e-007;
	setAttr ".wl[8].w[3]" 9.3868717272372084e-008;
	setAttr ".wl[9].w[0]"  1;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.99999994039535522;
	setAttr ".wl[10].w[1]" 1.3409816753196015e-008;
	setAttr ".wl[10].w[3]" 4.6194828022194608e-008;
	setAttr ".wl[11].w[0]"  1;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.90196072987482079;
	setAttr ".wl[12].w[1]" 6.7785260038310559e-010;
	setAttr ".wl[12].w[3]" 0.09803926944732666;
	setAttr -s 2 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.85490195453166962;
	setAttr ".wl[13].w[3]" 0.14509804546833038;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.75686274468898773;
	setAttr ".wl[14].w[3]" 0.24313725531101227;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.78823529183864594;
	setAttr ".wl[15].w[3]" 0.21176470816135406;
	setAttr -s 2 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.039215683937072754;
	setAttr ".wl[16].w[5]" 0.96078431606292725;
	setAttr -s 2 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.0036908984184265137;
	setAttr ".wl[17].w[5]" 0.99630910158157349;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.99999868869781494;
	setAttr ".wl[18].w[1]" 1.0491192840047532e-006;
	setAttr ".wl[18].w[3]" 2.6218290105384046e-007;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.99999982118606567;
	setAttr ".wl[23].w[1]" 7.1122132771808225e-008;
	setAttr ".wl[23].w[3]" 1.0769180155436364e-007;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.0073643031531508973;
	setAttr ".wl[26].w[5]" 0.31465700240791478;
	setAttr ".wl[26].w[6]" 0.67797869443893433;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.0045476958852139785;
	setAttr ".wl[27].w[5]" 0.5012894465822848;
	setAttr ".wl[27].w[6]" 0.49416285753250122;
	setAttr -s 3 ".wl[28].w[0:2]"  7.5376831887297158e-008 0.0017514667145377416 
		0.99824845790863037;
	setAttr -s 3 ".wl[29].w[0:2]"  0.00028624616223993371 0.015193676132376766 
		0.9845200777053833;
	setAttr -s 3 ".wl[30].w[0:2]"  2.2783985940577622e-005 0.0015930383292754868 
		0.99838417768478394;
	setAttr -s 3 ".wl[31].w[0:2]"  9.0338691833835583e-006 0.010574247647845425 
		0.98941671848297119;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.0001073883735216441;
	setAttr ".wl[32].w[3]" 0.0052312804497205434;
	setAttr ".wl[32].w[4]" 0.99466133117675781;
	setAttr -s 3 ".wl[33].w";
	setAttr ".wl[33].w[0]" 8.2166028604283901e-009;
	setAttr ".wl[33].w[3]" 0.0039611972658800494;
	setAttr ".wl[33].w[4]" 0.99603879451751709;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[0]" 1.7020048740562314e-008;
	setAttr ".wl[34].w[3]" 0.00053374257391488244;
	setAttr ".wl[34].w[4]" 0.99946624040603638;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.0013071893866545281;
	setAttr ".wl[35].w[3]" 0.018300652581881849;
	setAttr ".wl[35].w[4]" 0.98039215803146362;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.003374855818184661;
	setAttr ".wl[36].w[5]" 0.52699692934569475;
	setAttr ".wl[36].w[8]" 0.46962821483612061;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.0057911419461356218;
	setAttr ".wl[37].w[5]" 0.41784767870205775;
	setAttr ".wl[37].w[8]" 0.57636117935180664;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[0]" 4.4944294084761677e-006;
	setAttr ".wl[38].w[6]" 0.00016078925055368204;
	setAttr ".wl[38].w[7]" 0.99983471632003784;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.00072156210050877689;
	setAttr ".wl[39].w[6]" 0.094694387720963391;
	setAttr ".wl[39].w[7]" 0.90458405017852783;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.0010550342935147228;
	setAttr ".wl[40].w[6]" 0.016245988712924486;
	setAttr ".wl[40].w[7]" 0.98269897699356079;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.00098310454538859133;
	setAttr ".wl[41].w[6]" 0.021808102291311849;
	setAttr ".wl[41].w[7]" 0.97720879316329956;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.015739016675915707;
	setAttr ".wl[42].w[8]" 0.071027583932909977;
	setAttr ".wl[42].w[9]" 0.91323339939117432;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.0061245637017606205;
	setAttr ".wl[43].w[8]" 0.12557172011553064;
	setAttr ".wl[43].w[9]" 0.86830371618270874;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.00028792606924810116;
	setAttr ".wl[44].w[8]" 0.0052483917560692817;
	setAttr ".wl[44].w[9]" 0.99446368217468262;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.005160801333317977;
	setAttr ".wl[45].w[8]" 0.092278606968989152;
	setAttr ".wl[45].w[9]" 0.90256059169769287;
	setAttr -s 2 ".wl[46].w[1:2]"  3.5583972930908203e-005 0.99996441602706909;
	setAttr -s 3 ".wl[47].w[0:2]"  0.00010025308171996893 0.035839738392431646 
		0.96406000852584839;
	setAttr -s 3 ".wl[48].w[0:2]"  3.330476071994326e-005 0.020837798049186063 
		0.97912889719009399;
	setAttr -s 3 ".wl[49].w[0:2]"  1.3126401113391968e-007 0.00072740303011728405 
		0.99927246570587158;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[0]" 3.0188940023232577e-005;
	setAttr ".wl[50].w[3]" 0.0046756573696386328;
	setAttr ".wl[50].w[4]" 0.99529415369033813;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 2.7235069904951417e-008;
	setAttr ".wl[51].w[3]" 2.9000226935710282e-005;
	setAttr ".wl[51].w[4]" 0.99997097253799438;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[0]" 9.9495909434958217e-005;
	setAttr ".wl[52].w[3]" 0.0022070250294383329;
	setAttr ".wl[52].w[4]" 0.99769347906112671;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 7.5436334086020906e-005;
	setAttr ".wl[53].w[3]" 0.0068065159516805807;
	setAttr ".wl[53].w[4]" 0.9931180477142334;
	setAttr -s 2 ".wl[54].w[0:1]"  0.14513054490089417 0.85486945509910583;
	setAttr -s 2 ".wl[55].w[0:1]"  0.26206576824188232 0.73793423175811768;
	setAttr -s 2 ".wl[56].w[0:1]"  0.29294446110725403 0.70705553889274597;
	setAttr -s 2 ".wl[57].w[0:1]"  0.18823544681072235 0.81176455318927765;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.070350535213947296;
	setAttr ".wl[58].w[3]" 0.9296494647860527;
	setAttr -s 2 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.12255965918302536;
	setAttr ".wl[59].w[3]" 0.87744034081697464;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.25296154618263245;
	setAttr ".wl[60].w[3]" 0.74703845381736755;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.25473615527153015;
	setAttr ".wl[61].w[3]" 0.74526384472846985;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[0]" 8.9158064552794841e-006;
	setAttr ".wl[62].w[5]" 0.068973446940737107;
	setAttr ".wl[62].w[6]" 0.93101763725280762;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.0035233102769040969;
	setAttr ".wl[63].w[5]" 1.5892058229537651e-006;
	setAttr ".wl[63].w[6]" 0.99647510051727295;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.0001240275554672797;
	setAttr ".wl[64].w[5]" 1.2018032058159991e-006;
	setAttr ".wl[64].w[6]" 0.9998747706413269;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.00016129355092123803;
	setAttr ".wl[65].w[5]" 0.14222269912104532;
	setAttr ".wl[65].w[6]" 0.85761600732803345;
	setAttr -s 2 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.0004711151123046875;
	setAttr ".wl[66].w[8]" 0.99952888488769531;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 9.2711391332995587e-006;
	setAttr ".wl[67].w[5]" 0.26976290083504884;
	setAttr ".wl[67].w[8]" 0.73022782802581787;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[0]" 2.7074619593220607e-006;
	setAttr ".wl[68].w[5]" 0.23738798954045157;
	setAttr ".wl[68].w[8]" 0.76260930299758911;
	setAttr -s 3 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.0014626155386022847;
	setAttr ".wl[69].w[5]" 4.3739786096292673e-006;
	setAttr ".wl[69].w[8]" 0.99853301048278809;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 6.6285445484481897e-005;
	setAttr ".wl[70].w[6]" 0.05529438941260878;
	setAttr ".wl[70].w[7]" 0.94463932514190674;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.00029356135565398816;
	setAttr ".wl[71].w[6]" 0.036163500411924135;
	setAttr ".wl[71].w[7]" 0.96354293823242188;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 8.8049321662993845e-005;
	setAttr ".wl[72].w[6]" 0.035282777399528412;
	setAttr ".wl[72].w[7]" 0.96462917327880859;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 3.4830560780845517e-005;
	setAttr ".wl[73].w[6]" 0.0033295536135660784;
	setAttr ".wl[73].w[7]" 0.99663561582565308;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.0026764235482344234;
	setAttr ".wl[74].w[8]" 0.059210781098829789;
	setAttr ".wl[74].w[9]" 0.93811279535293579;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.00096102735489107197;
	setAttr ".wl[75].w[8]" 0.060307659893338909;
	setAttr ".wl[75].w[9]" 0.93873131275177002;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.00010479989305878233;
	setAttr ".wl[76].w[8]" 0.022686406943641657;
	setAttr ".wl[76].w[9]" 0.97720879316329956;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.0024644599390813795;
	setAttr ".wl[77].w[8]" 0.071352673964422034;
	setAttr ".wl[77].w[9]" 0.92618286609649658;
	setAttr ".wl[78].w[0]"  1;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.9999992847442627;
	setAttr ".wl[79].w[1]" 6.4711593304193396e-007;
	setAttr ".wl[79].w[3]" 6.8139804262753528e-008;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr -s 10 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5999999999999996 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5999999999999996 -1.1000000000000001 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5999999999999996 -4.0999999999999996 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5999999999999996 1.1000000000000001 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.5999999999999996 4.4000000000000004 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -2 -0 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -0.80000000000000004 -0.80000000000000004 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 2.7000000000000002 -0.80000000000000004 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -0.75 0.80000000000000004 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 2.75 0.80000000000000004 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 10 ".dpf[0:9]"  4 4 4 4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
	setAttr -s 10 ".ifcl";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 10 ".wm";
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 6.5999999999999996 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 1.1000000000000001 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.1000000000000001 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -3.2999999999999998 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.5999999999999996
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.2 0.80000000000000004 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -3.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.25 -0.80000000000000004 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -3.5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1GroupId.id" "pillarManShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pillarManShape.iog.og[0].gco";
connectAttr "groupId2.id" "pillarManShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pillarManShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pillarManShape.i";
connectAttr "tweak1.vl[0].vt[0]" "pillarManShape.twl";
connectAttr "jointRoot.s" "jointRightHand1.is";
connectAttr "jointRightHand1.s" "jointRighthand2.is";
connectAttr "jointRoot.s" "jointLeftHand1.is";
connectAttr "jointLeftHand1.s" "jointLeftHand2.is";
connectAttr "jointRoot.s" "jointAss.is";
connectAttr "jointAss.s" "jointRightLeg1.is";
connectAttr "jointRightLeg1.s" "jointRightLeg2.is";
connectAttr "jointAss.s" "jointLeftLeg1.is";
connectAttr "jointLeftLeg1.s" "jointLeftLeg2.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "jointRoot.wm" "skinCluster1.ma[0]";
connectAttr "jointRightHand1.wm" "skinCluster1.ma[1]";
connectAttr "jointRighthand2.wm" "skinCluster1.ma[2]";
connectAttr "jointLeftHand1.wm" "skinCluster1.ma[3]";
connectAttr "jointLeftHand2.wm" "skinCluster1.ma[4]";
connectAttr "jointAss.wm" "skinCluster1.ma[5]";
connectAttr "jointRightLeg1.wm" "skinCluster1.ma[6]";
connectAttr "jointRightLeg2.wm" "skinCluster1.ma[7]";
connectAttr "jointLeftLeg1.wm" "skinCluster1.ma[8]";
connectAttr "jointLeftLeg2.wm" "skinCluster1.ma[9]";
connectAttr "jointRoot.liw" "skinCluster1.lw[0]";
connectAttr "jointRightHand1.liw" "skinCluster1.lw[1]";
connectAttr "jointRighthand2.liw" "skinCluster1.lw[2]";
connectAttr "jointLeftHand1.liw" "skinCluster1.lw[3]";
connectAttr "jointLeftHand2.liw" "skinCluster1.lw[4]";
connectAttr "jointAss.liw" "skinCluster1.lw[5]";
connectAttr "jointRightLeg1.liw" "skinCluster1.lw[6]";
connectAttr "jointRightLeg2.liw" "skinCluster1.lw[7]";
connectAttr "jointLeftLeg1.liw" "skinCluster1.lw[8]";
connectAttr "jointLeftLeg2.liw" "skinCluster1.lw[9]";
connectAttr "jointRoot.obcc" "skinCluster1.ifcl[0]";
connectAttr "jointRightHand1.obcc" "skinCluster1.ifcl[1]";
connectAttr "jointRighthand2.obcc" "skinCluster1.ifcl[2]";
connectAttr "jointLeftHand1.obcc" "skinCluster1.ifcl[3]";
connectAttr "jointLeftHand2.obcc" "skinCluster1.ifcl[4]";
connectAttr "jointAss.obcc" "skinCluster1.ifcl[5]";
connectAttr "jointRightLeg1.obcc" "skinCluster1.ifcl[6]";
connectAttr "jointRightLeg2.obcc" "skinCluster1.ifcl[7]";
connectAttr "jointLeftLeg1.obcc" "skinCluster1.ifcl[8]";
connectAttr "jointLeftLeg2.obcc" "skinCluster1.ifcl[9]";
connectAttr "jointRightLeg1.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pillarManShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pillarManShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pillarManShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "jointRoot.msg" "bindPose1.m[0]";
connectAttr "jointRightHand1.msg" "bindPose1.m[1]";
connectAttr "jointRighthand2.msg" "bindPose1.m[2]";
connectAttr "jointLeftHand1.msg" "bindPose1.m[3]";
connectAttr "jointLeftHand2.msg" "bindPose1.m[4]";
connectAttr "jointAss.msg" "bindPose1.m[5]";
connectAttr "jointRightLeg1.msg" "bindPose1.m[6]";
connectAttr "jointRightLeg2.msg" "bindPose1.m[7]";
connectAttr "jointLeftLeg1.msg" "bindPose1.m[8]";
connectAttr "jointLeftLeg2.msg" "bindPose1.m[9]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[5]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "jointRoot.bps" "bindPose1.wm[0]";
connectAttr "jointRightHand1.bps" "bindPose1.wm[1]";
connectAttr "jointRighthand2.bps" "bindPose1.wm[2]";
connectAttr "jointLeftHand1.bps" "bindPose1.wm[3]";
connectAttr "jointLeftHand2.bps" "bindPose1.wm[4]";
connectAttr "jointAss.bps" "bindPose1.wm[5]";
connectAttr "jointRightLeg1.bps" "bindPose1.wm[6]";
connectAttr "jointRightLeg2.bps" "bindPose1.wm[7]";
connectAttr "jointLeftLeg1.bps" "bindPose1.wm[8]";
connectAttr "jointLeftLeg2.bps" "bindPose1.wm[9]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pillarManShape.iog" ":initialShadingGroup.dsm" -na;
// End of pillarMan.ma
