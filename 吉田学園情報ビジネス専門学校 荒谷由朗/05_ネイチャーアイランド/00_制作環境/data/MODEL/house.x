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
 86;
 183.78760;253.18020;152.43378;,
 -185.34768;253.18020;152.43380;,
 -185.34768;0.45366;152.43596;,
 183.78760;0.45366;152.43594;,
 -185.34768;253.18020;152.43380;,
 -185.34768;253.18020;-160.67620;,
 -185.34768;0.45366;-160.68023;,
 -185.34768;0.45366;152.43596;,
 -185.34768;253.18020;-160.67620;,
 183.78760;253.18020;-160.67620;,
 183.78760;0.45366;-160.68026;,
 -185.34768;0.45366;-160.68023;,
 183.78760;253.18020;-160.67620;,
 183.78760;253.18020;152.43378;,
 183.78760;0.45366;152.43594;,
 183.78760;0.45366;-160.68026;,
 183.78760;397.08118;-4.12122;,
 183.78760;253.18020;152.43378;,
 183.78760;253.18020;-160.67620;,
 -185.34768;397.08118;-4.12120;,
 -185.34768;253.18020;-160.67620;,
 -185.34768;253.18020;152.43380;,
 -185.34768;433.05596;-2.57320;,
 183.78760;433.05596;-2.57322;,
 183.78760;397.08118;-4.12122;,
 -185.34768;397.08118;-4.12120;,
 183.78760;433.05596;-2.57322;,
 183.78764;253.18020;226.06675;,
 183.78760;253.18020;152.43378;,
 183.78760;397.08118;-4.12122;,
 183.78764;253.18020;226.06675;,
 -185.34765;253.18020;226.06695;,
 -185.34765;253.18020;152.43380;,
 183.78760;253.18020;152.43378;,
 -185.34765;253.18020;226.06695;,
 -185.34768;433.05596;-2.57320;,
 -185.34768;397.08118;-4.12120;,
 -185.34765;253.18020;152.43380;,
 183.78760;433.05596;-2.57322;,
 -185.34768;433.05596;-2.57320;,
 -185.34772;253.18020;-227.57398;,
 -185.34768;253.18020;-160.67620;,
 -185.34772;253.18020;-227.57398;,
 183.78756;253.18020;-227.57398;,
 183.78760;253.18020;-160.67620;,
 -185.34768;253.18020;-160.67620;,
 183.78756;253.18020;-227.57398;,
 183.78760;253.18020;-160.67620;,
 -185.34768;433.05596;-2.57320;,
 183.78760;433.05596;-2.57322;,
 -185.99569;1.06687;-127.89339;,
 -185.99569;1.06687;-57.76619;,
 -185.99569;107.60423;-57.76619;,
 -185.99569;107.60423;-127.89339;,
 90.74855;504.63126;-89.27399;,
 90.74854;504.63126;-134.20227;,
 83.55133;319.73548;-141.73811;,
 83.55134;319.73548;-81.73811;,
 90.74854;504.63126;-134.20227;,
 136.35413;504.63126;-134.20228;,
 143.55133;319.73548;-141.73812;,
 83.55133;319.73548;-141.73811;,
 136.35413;504.63126;-134.20228;,
 136.35414;504.63126;-89.27400;,
 143.55134;319.73548;-81.73812;,
 143.55133;319.73548;-141.73812;,
 136.35414;504.63126;-89.27400;,
 90.74855;504.63126;-89.27399;,
 83.55134;319.73548;-81.73811;,
 143.55134;319.73548;-81.73812;,
 90.74854;504.63126;-134.20227;,
 90.74855;504.63126;-89.27399;,
 83.55134;319.73548;-81.73811;,
 83.55133;319.73548;-141.73811;,
 -185.99569;63.81638;-27.21198;,
 -185.99569;63.81638;146.61210;,
 -185.99569;170.88650;146.61210;,
 -185.99569;170.88650;-27.21198;,
 -26.67428;69.18513;-161.58871;,
 -141.57602;69.18513;-161.58871;,
 -141.57602;176.25530;-161.58871;,
 -26.67428;176.25530;-161.58871;,
 153.52371;69.18513;-161.58871;,
 38.62194;69.18513;-161.58871;,
 38.62194;176.25530;-161.58871;,
 153.52371;176.25530;-161.58871;;
 
 26;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 3;16,17,18;,
 3;19,20,21;,
 4;22,23,24,25;,
 4;26,27,28,29;,
 4;30,31,32,33;,
 4;34,35,36,37;,
 4;34,27,38,39;,
 4;26,35,36,29;,
 4;22,40,41,25;,
 4;42,43,44,45;,
 4;46,23,24,47;,
 4;46,40,48,49;,
 4;50,51,52,53;,
 4;54,55,56,57;,
 4;58,59,60,61;,
 4;62,63,64,65;,
 4;66,67,68,69;,
 4;66,59,70,71;,
 4;72,73,60,69;,
 4;74,75,76,77;,
 4;78,79,80,81;,
 4;82,83,84,85;;
 
 MeshMaterialList {
  5;
  26;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  4,
  4,
  4,
  4,
  4,
  4,
  3,
  3,
  3;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.392157;0.197647;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\game115\\Desktop\\window_close.png";
   }
  }
  Material {
   0.511373;0.511373;0.511373;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  27;
  0.000000;0.000009;1.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000016;-1.000000;,
  1.000000;0.000000;-0.000000;,
  -0.000000;0.452618;-0.891705;,
  -0.000000;0.042990;-0.999075;,
  1.000000;-0.000000;-0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;-0.000000;0.000000;,
  1.000000;0.000000;-0.000000;,
  -1.000000;-0.000000;0.000000;,
  -1.000000;-0.000000;0.000000;,
  0.000000;0.785934;0.618310;,
  0.000000;0.417417;0.908715;,
  0.000000;-0.042990;0.999075;,
  1.000000;0.000000;-0.000000;,
  -0.000000;0.781080;-0.624431;,
  -1.000000;0.000000;0.000000;,
  -0.999243;0.038896;0.000000;,
  -0.000000;0.040723;-0.999170;,
  0.999243;0.038896;-0.000000;,
  0.000000;0.040724;0.999170;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  26;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  3;3,3,3;,
  3;1,1,1;,
  4;4,4,5,5;,
  4;9,6,6,9;,
  4;7,7,7,7;,
  4;10,11,11,10;,
  4;12,12,13,13;,
  4;13,13,14,14;,
  4;11,8,8,11;,
  4;7,7,7,7;,
  4;15,9,9,15;,
  4;16,16,4,4;,
  4;17,17,17,17;,
  4;18,18,18,18;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;21,21,21,21;,
  4;22,22,22,22;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;;
 }
 MeshTextureCoords {
  86;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.500000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.500000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;;
 }
}
