xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 80;
 -4.60513;-0.04439;3.00775;,
 -4.34342;-1.85862;2.78251;,
 0.52097;-1.49675;2.30200;,
 0.36559;0.18454;2.33802;,
 0.48557;-1.37914;-1.21329;,
 0.33015;0.30215;-1.17723;,
 -1.14157;-1.47189;-2.39922;,
 -1.29695;0.20940;-2.36316;,
 0.33015;0.30215;-1.17723;,
 -1.29695;0.20940;-2.36316;,
 -4.57621;0.20883;-2.23247;,
 0.48557;-1.37914;-1.21329;,
 -4.39150;-1.69922;-2.26849;,
 -1.14157;-1.47189;-2.39922;,
 -4.34342;-1.85862;2.78251;,
 -4.60513;-0.04439;3.00775;,
 0.36559;0.18454;2.33802;,
 0.52097;-1.49675;2.30200;,
 -4.57621;0.20883;-2.23247;,
 -4.39150;-1.69922;-2.26849;,
 -6.51010;-4.34107;-0.38604;,
 -6.65654;-5.35008;-0.73639;,
 -7.86360;-2.89032;-0.76412;,
 -6.86365;-2.80212;-0.36179;,
 -7.84038;-2.88191;0.08926;,
 -6.64301;-5.33175;0.00295;,
 -6.48057;-4.18676;1.41728;,
 -6.60473;-5.18559;1.11587;,
 -7.76724;-2.87034;0.94723;,
 -6.80529;-2.74749;1.33459;,
 -7.75210;-2.78674;1.76899;,
 -6.62652;-5.11454;1.82781;,
 -7.11371;-3.37009;2.92345;,
 -7.20178;-4.26145;2.71302;,
 -7.66625;-2.30652;2.50398;,
 -6.83863;-2.15171;2.83440;,
 -7.66276;-2.13711;3.20551;,
 -7.26561;-4.13133;3.32077;,
 -6.83900;-4.02034;-2.32427;,
 -7.01715;-4.92417;-2.72512;,
 -7.93600;-2.47495;-2.54266;,
 -6.97773;-2.46527;-2.16343;,
 -7.89990;-2.61524;-1.73789;,
 -6.93606;-5.01187;-2.02790;,
 -4.50406;-5.76389;-0.13951;,
 -5.08560;-6.54015;-0.16006;,
 -4.83374;-5.87957;-1.43960;,
 -4.22525;-5.30360;-0.81650;,
 -5.19512;-5.02660;-1.12230;,
 -5.39866;-5.80114;0.11482;,
 -3.32711;-0.27296;-3.55975;,
 -4.01506;-4.81776;-2.95754;,
 -4.26196;-3.91865;-2.78386;,
 -3.80192;0.13306;-2.75978;,
 -3.32711;-0.27296;-3.55975;,
 -2.68884;-0.45710;-2.59336;,
 -3.28720;-4.18171;-2.26471;,
 -4.01506;-4.81776;-2.95754;,
 -3.28720;-4.18171;-2.26471;,
 -2.68884;-0.45710;-2.59336;,
 -2.68884;-0.45710;-2.59336;,
 -3.32711;-0.27296;-3.55975;,
 -3.80192;0.13306;-2.75978;,
 -5.16116;-0.01826;-2.16302;,
 -4.46521;-1.01033;-1.73129;,
 -5.24664;-0.14743;-1.24680;,
 -5.30235;-0.19055;-0.84296;,
 -4.51423;-1.17478;-0.38489;,
 -5.27897;-0.20921;0.12868;,
 -5.14500;-0.42026;1.91925;,
 -4.42764;-1.18142;2.29540;,
 -5.00799;-0.31328;2.71786;,
 -5.30932;-0.34572;0.64106;,
 -4.52088;-1.26773;1.08207;,
 -5.23208;-0.30688;1.57660;,
 -4.70625;-6.39022;0.95536;,
 -5.22589;-4.84968;3.09254;,
 -4.44085;-5.81324;1.49502;,
 -4.43166;-6.00718;-0.38743;,
 -4.82524;-5.62947;-2.48113;;
 
 64;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 3;8,9,10;,
 3;11,12,13;,
 3;12,11,14;,
 3;8,10,15;,
 3;15,16,8;,
 3;14,11,17;,
 4;18,7,6,19;,
 4;10,12,14,15;,
 4;20,21,22,23;,
 4;20,23,24,25;,
 4;21,25,24,22;,
 4;26,27,28,29;,
 4;26,29,30,31;,
 4;27,31,30,28;,
 4;32,33,34,35;,
 4;32,35,36,37;,
 4;33,37,36,34;,
 4;38,39,40,41;,
 4;38,41,42,43;,
 4;39,43,42,40;,
 4;44,45,46,47;,
 4;44,47,48,49;,
 4;45,49,48,46;,
 4;50,51,52,53;,
 4;54,55,56,57;,
 4;53,52,58,59;,
 3;60,61,62;,
 4;40,63,64,41;,
 4;63,40,42,65;,
 4;65,42,41,64;,
 4;22,66,67,23;,
 4;66,22,24,68;,
 4;68,24,23,67;,
 4;34,69,70,35;,
 4;69,34,36,71;,
 4;71,36,35,70;,
 4;28,72,73,29;,
 4;72,28,30,74;,
 4;74,30,29,73;,
 4;46,51,58,47;,
 4;51,46,48,52;,
 4;52,48,47,58;,
 3;75,49,45;,
 3;75,45,44;,
 3;75,44,49;,
 3;76,37,33;,
 3;76,33,32;,
 3;76,32,37;,
 3;77,31,27;,
 3;77,27,26;,
 3;77,26,31;,
 3;78,25,21;,
 3;78,21,20;,
 3;78,20,25;,
 3;79,43,39;,
 3;79,39,38;,
 3;79,38,43;,
 3;64,63,65;,
 3;67,66,68;,
 3;73,72,74;,
 3;70,69,71;;
 
 MeshMaterialList {
  1;
  64;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.517647;0.279216;0.194510;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  84;
  -0.016254;0.999785;-0.012844;,
  0.070740;-0.997195;-0.024473;,
  0.118469;-0.057385;0.991298;,
  0.288064;0.046413;-0.956486;,
  0.885073;0.091596;-0.456350;,
  0.283245;-0.334909;-0.898670;,
  -0.723574;0.689902;0.021798;,
  -0.287308;-0.957399;0.029005;,
  0.365592;-0.089262;-0.926485;,
  0.418265;-0.103824;0.902372;,
  0.329339;0.227290;-0.916447;,
  0.375579;0.244552;0.893943;,
  0.253435;-0.410753;-0.875816;,
  -0.710131;0.703920;-0.014553;,
  -0.291433;-0.952704;0.086154;,
  0.360732;-0.155699;-0.919581;,
  0.420133;-0.050848;0.906037;,
  0.341460;0.183942;-0.921722;,
  0.363226;0.286687;0.886497;,
  0.186514;-0.595464;-0.781432;,
  -0.594323;0.798248;-0.097876;,
  -0.310733;-0.935592;0.167669;,
  0.400145;-0.333147;-0.853755;,
  0.482489;-0.104829;0.869607;,
  0.413014;0.086537;-0.906604;,
  0.432071;0.253916;0.865356;,
  0.320123;-0.237495;-0.917125;,
  -0.678014;0.728367;0.098881;,
  -0.296593;-0.951200;-0.085149;,
  0.393642;-0.022448;-0.918990;,
  0.420229;-0.243320;0.874187;,
  0.335242;0.279624;-0.899680;,
  0.411315;0.155186;0.898186;,
  -0.731887;0.042938;-0.680071;,
  0.783330;-0.188277;-0.592407;,
  -0.813789;-0.471243;0.340114;,
  -0.784929;-0.045833;-0.617889;,
  0.803032;-0.471942;-0.363882;,
  0.744963;-0.657307;-0.113922;,
  0.035546;0.821125;0.569640;,
  0.780467;-0.603014;-0.165064;,
  0.097243;0.839862;0.534018;,
  0.995718;0.092185;-0.006949;,
  -0.024665;0.999692;0.002733;,
  -0.003113;0.997274;-0.073722;,
  0.070760;-0.997110;-0.027671;,
  0.069097;-0.997468;-0.016796;,
  0.071589;-0.996885;-0.033107;,
  -0.035384;0.998534;0.040956;,
  -0.041433;0.998569;0.033826;,
  0.070798;-0.996909;-0.034065;,
  -0.040618;0.016300;-0.999042;,
  -0.992901;-0.118908;-0.002931;,
  -0.646435;-0.762334;0.031127;,
  -0.897591;-0.439937;0.028050;,
  -0.647409;-0.759087;0.068180;,
  -0.896868;-0.440577;0.038987;,
  -0.742294;-0.663069;0.096644;,
  -0.976732;-0.214462;-0.000046;,
  -0.681698;-0.730750;-0.035951;,
  -0.930924;-0.364641;0.020413;,
  -0.919073;-0.393898;0.012229;,
  -0.876733;-0.202682;-0.436188;,
  -0.292180;0.080338;0.952983;,
  -0.170211;0.497314;0.850710;,
  0.480674;0.863459;-0.152943;,
  0.259065;-0.516300;0.816284;,
  0.320051;-0.361271;0.875814;,
  0.344442;-0.286306;0.894085;,
  0.341175;-0.307988;0.888112;,
  0.788241;-0.585501;-0.189381;,
  0.109056;0.854014;0.508691;,
  0.241962;0.200226;-0.949402;,
  0.242863;0.410322;0.879007;,
  0.237797;0.253400;-0.937679;,
  0.251435;0.358287;0.899117;,
  0.231073;0.289037;-0.929012;,
  0.259258;0.322658;0.910317;,
  0.216777;0.359753;-0.907516;,
  0.272834;0.250901;0.928768;,
  0.774517;0.612349;0.158593;,
  0.782121;0.623089;-0.006852;,
  0.777785;0.622047;-0.090045;,
  0.761365;0.612454;-0.212658;;
  64;
  4;2,2,2,2;,
  4;42,42,4,4;,
  4;4,4,3,3;,
  3;43,44,0;,
  3;45,1,46;,
  3;1,45,47;,
  3;43,0,48;,
  3;48,49,43;,
  3;47,45,50;,
  4;51,3,3,51;,
  4;52,52,52,52;,
  4;10,10,8,8;,
  4;11,9,9,11;,
  4;53,53,54,54;,
  4;17,17,15,15;,
  4;18,16,16,18;,
  4;55,55,56,56;,
  4;24,24,22,22;,
  4;25,23,23,25;,
  4;57,57,58,58;,
  4;31,31,29,29;,
  4;32,30,30,32;,
  4;59,59,60,60;,
  4;40,40,38,38;,
  4;41,39,39,41;,
  4;61,61,62,62;,
  4;33,36,36,33;,
  4;34,34,37,37;,
  4;63,64,64,63;,
  3;65,65,65;,
  4;29,26,26,29;,
  4;27,27,27,27;,
  4;66,30,30,66;,
  4;8,5,5,8;,
  4;6,6,6,6;,
  4;67,9,9,67;,
  4;22,19,19,22;,
  4;20,20,20,20;,
  4;68,23,23,68;,
  4;15,12,12,15;,
  4;13,13,13,13;,
  4;69,16,16,69;,
  4;38,37,37,38;,
  4;36,62,62,36;,
  4;64,39,39,64;,
  3;35,61,61;,
  3;70,40,40;,
  3;71,41,41;,
  3;21,57,57;,
  3;72,24,24;,
  3;73,25,25;,
  3;14,55,55;,
  3;74,17,17;,
  3;75,18,18;,
  3;7,53,53;,
  3;76,10,10;,
  3;77,11,11;,
  3;28,59,59;,
  3;78,31,31;,
  3;79,32,32;,
  3;80,80,80;,
  3;81,81,81;,
  3;82,82,82;,
  3;83,83,83;;
 }
 MeshTextureCoords {
  80;
  0.703880;0.969930;,
  0.704270;0.903020;,
  0.719630;0.893650;,
  0.727080;0.970480;,
  0.704270;0.903020;,
  0.703880;0.969930;,
  0.719630;0.893650;,
  0.727080;0.970480;,
  0.453080;0.332080;,
  0.432660;0.376260;,
  0.437170;0.452370;,
  0.453080;0.332080;,
  0.437170;0.452370;,
  0.432660;0.376260;,
  0.557450;0.452510;,
  0.557450;0.452510;,
  0.546190;0.334320;,
  0.546190;0.334320;,
  0.703880;0.969930;,
  0.704270;0.903020;,
  0.802820;0.194360;,
  0.791720;0.194870;,
  0.789080;0.129780;,
  0.801640;0.129920;,
  0.815330;0.130360;,
  0.814460;0.195360;,
  0.802820;0.194360;,
  0.791720;0.194870;,
  0.789080;0.129780;,
  0.801640;0.129920;,
  0.815330;0.130360;,
  0.814460;0.195360;,
  0.802820;0.194360;,
  0.791720;0.194870;,
  0.789080;0.129780;,
  0.801640;0.129920;,
  0.815330;0.130360;,
  0.814460;0.195360;,
  0.802820;0.194360;,
  0.791720;0.194870;,
  0.789080;0.129780;,
  0.801640;0.129920;,
  0.815330;0.130360;,
  0.814460;0.195360;,
  0.802820;0.194360;,
  0.791720;0.194870;,
  0.789080;0.129780;,
  0.801640;0.129920;,
  0.815330;0.130360;,
  0.814460;0.195360;,
  0.789080;0.129780;,
  0.786520;0.031330;,
  0.816370;0.032000;,
  0.815330;0.130360;,
  0.801640;0.129920;,
  0.789080;0.129780;,
  0.786520;0.031330;,
  0.801060;0.031900;,
  0.801060;0.031900;,
  0.801640;0.129920;,
  0.801060;0.031900;,
  0.786520;0.031330;,
  0.816370;0.032000;,
  0.786520;0.031330;,
  0.801060;0.031900;,
  0.816370;0.032000;,
  0.786520;0.031330;,
  0.801060;0.031900;,
  0.816370;0.032000;,
  0.786520;0.031330;,
  0.801060;0.031900;,
  0.816370;0.032000;,
  0.786520;0.031330;,
  0.801060;0.031900;,
  0.816370;0.032000;,
  0.802190;0.219800;,
  0.802190;0.219800;,
  0.802190;0.219800;,
  0.802190;0.219800;,
  0.802190;0.219800;;
 }
}
