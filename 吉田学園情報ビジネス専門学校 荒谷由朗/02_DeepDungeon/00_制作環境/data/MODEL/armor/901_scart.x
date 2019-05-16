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
 98;
 -4.98074;0.03873;-5.73971;,
 -3.29900;0.03873;-5.73971;,
 -3.61202;-0.60750;-6.25324;,
 -5.45026;-0.60750;-6.25324;,
 6.79148;0.03873;-5.73971;,
 6.79148;0.03873;-0.22148;,
 7.41750;-0.60750;-0.22148;,
 7.41750;-0.60750;-6.25324;,
 -7.28850;-0.60750;5.81027;,
 -7.28850;-0.60750;-0.22148;,
 -7.49782;-1.17772;-0.22148;,
 -7.49782;-1.17772;5.98196;,
 -6.66248;0.03873;5.29675;,
 -6.66248;0.03873;-0.22148;,
 7.62678;-1.17772;-0.22148;,
 7.62678;-1.17772;-6.42494;,
 -6.66248;0.03873;-5.73971;,
 -7.28850;-0.60750;-6.25324;,
 -5.45024;-0.60750;5.81027;,
 -4.98074;0.03873;5.29675;,
 -5.60723;-1.17772;5.98196;,
 -3.71666;-1.17772;5.98196;,
 -3.61202;-0.60750;5.81027;,
 8.80616;-4.71300;-0.22148;,
 8.80616;-4.71300;-7.39237;,
 5.73624;-1.17772;-6.42494;,
 5.57925;-0.60750;-6.25324;,
 8.80616;-6.53767;-0.22148;,
 8.80616;-6.53767;-7.39237;,
 -7.49782;-1.17772;-6.42494;,
 -8.67718;-4.71300;-7.39237;,
 -8.67718;-4.71300;-0.22148;,
 8.80616;-4.71300;6.94941;,
 8.80616;-6.53767;6.94941;,
 -8.67718;-6.53767;-7.39237;,
 -8.67718;-6.53767;-0.22148;,
 0.06451;-4.71300;6.94941;,
 0.06451;-6.53767;6.94941;,
 1.95508;-1.17772;-6.42494;,
 2.24991;-4.71300;-7.39237;,
 0.06451;-4.71300;-7.39237;,
 0.06451;-1.17772;-6.42494;,
 6.62075;-4.71300;-7.39237;,
 4.43532;-4.71300;-7.39237;,
 3.84566;-1.17772;-6.42494;,
 -1.82608;-1.17772;-6.42494;,
 -2.12091;-4.71300;-7.39237;,
 -3.71666;-1.17772;-6.42494;,
 -4.30633;-4.71300;-7.39237;,
 -5.60723;-1.17772;-6.42494;,
 -6.49176;-4.71300;-7.39237;,
 3.74099;-0.60750;-6.25324;,
 1.90274;-0.60750;-6.25324;,
 -1.77375;-0.60750;-6.25324;,
 0.06451;-0.60750;-6.25324;,
 -1.82608;-1.17772;5.98196;,
 -1.77375;-0.60750;5.81027;,
 0.06451;-1.17772;5.98196;,
 0.06451;-0.60750;5.81027;,
 1.90275;-0.60750;5.81027;,
 1.95508;-1.17772;5.98196;,
 3.74099;-0.60750;5.81027;,
 3.84566;-1.17772;5.98196;,
 5.57925;-0.60750;5.81027;,
 5.73624;-1.17772;5.98196;,
 7.41750;-0.60750;5.81027;,
 7.62678;-1.17772;5.98196;,
 -3.29900;0.03873;5.29675;,
 -1.61725;0.03873;5.29675;,
 0.06451;0.03873;5.29675;,
 1.74624;0.03873;5.29675;,
 3.42799;0.03873;5.29675;,
 5.10972;0.03873;5.29675;,
 5.10972;0.03873;-5.73971;,
 3.42799;0.03873;-5.73971;,
 1.74624;0.03873;-5.73971;,
 0.06451;0.03873;-5.73971;,
 -1.61725;0.03873;-5.73971;,
 6.79148;0.03873;5.29675;,
 -8.67718;-4.71300;6.94941;,
 -8.67718;-6.53767;6.94941;,
 0.06451;-6.53767;-7.39237;,
 10.39333;-12.34274;-7.39237;,
 1.65167;-12.34274;-7.39237;,
 -1.73265;-12.47210;-7.39237;,
 -10.47433;-12.47210;-7.39237;,
 11.83941;-13.03849;7.65876;,
 11.83941;-13.03849;0.48787;,
 11.99375;-13.03147;-0.34448;,
 11.99375;-13.03147;-7.51537;,
 -11.01113;-12.20515;-7.02272;,
 -11.01111;-12.20515;0.14818;,
 -11.67919;-11.97428;0.51796;,
 -11.67919;-11.97428;7.68886;,
 -10.51524;-12.89704;9.13716;,
 -1.77357;-12.89704;9.13716;,
 0.11399;-12.03689;8.86820;,
 8.85566;-12.03689;8.86820;;
 
 104;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,9,8;,
 4;7,6,14,15;,
 4;16,17,9,13;,
 4;12,8,18,19;,
 4;18,20,21,22;,
 4;16,0,3,17;,
 4;15,14,23,24;,
 4;7,15,25,26;,
 4;24,23,27,28;,
 4;29,30,31,10;,
 4;23,32,33,27;,
 4;31,30,34,35;,
 4;32,36,37,33;,
 4;38,39,40,41;,
 4;15,24,42,25;,
 4;25,42,43,44;,
 4;45,41,40,46;,
 4;47,45,46,48;,
 4;49,47,48,50;,
 4;29,49,50,30;,
 4;26,25,44,51;,
 4;51,44,38,52;,
 4;53,54,41,45;,
 4;2,53,45,47;,
 4;3,2,47,49;,
 4;17,3,49,29;,
 4;22,21,55,56;,
 4;56,55,57,58;,
 4;59,58,57,60;,
 4;61,59,60,62;,
 4;63,61,62,64;,
 4;65,63,64,66;,
 4;8,11,20,18;,
 4;19,18,22,67;,
 4;67,22,56,68;,
 4;68,56,58,69;,
 4;70,69,58,59;,
 4;71,70,59,61;,
 4;72,71,61,63;,
 4;4,7,26,73;,
 4;73,26,51,74;,
 4;74,51,52,75;,
 4;75,52,54,76;,
 4;77,76,54,53;,
 4;1,77,53,2;,
 4;78,72,63,65;,
 4;66,32,23,14;,
 4;79,31,35,80;,
 4;65,66,14,6;,
 4;78,65,6,5;,
 4;17,29,10,9;,
 4;11,10,31,79;,
 3;28,42,24;,
 3;81,48,46;,
 4;36,79,80,37;,
 3;62,60,36;,
 4;81,28,82,83;,
 4;34,81,84,85;,
 4;27,33,86,87;,
 4;28,27,88,89;,
 4;35,34,90,91;,
 4;80,35,92,93;,
 4;37,80,94,95;,
 4;33,37,96,97;,
 4;44,43,39,38;,
 4;52,38,41,54;,
 3;68,69,13;,
 3;42,28,43;,
 3;39,81,40;,
 3;81,43,28;,
 3;43,81,39;,
 3;48,34,50;,
 3;30,50,34;,
 3;81,46,40;,
 3;48,81,34;,
 3;20,79,21;,
 3;55,36,57;,
 3;62,32,64;,
 3;21,36,55;,
 3;64,32,66;,
 3;57,36,60;,
 3;79,20,11;,
 3;62,36,32;,
 3;36,21,79;,
 3;5,72,78;,
 3;71,5,70;,
 3;5,71,72;,
 3;73,5,4;,
 3;76,5,75;,
 3;74,5,73;,
 3;5,69,70;,
 3;68,13,67;,
 3;5,76,69;,
 3;75,5,74;,
 3;0,13,1;,
 3;77,13,76;,
 3;69,76,13;,
 3;19,13,12;,
 3;13,0,16;,
 3;1,13,77;,
 3;67,13,19;;
 
 MeshMaterialList {
  1;
  104;
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
   0.377600;0.377600;0.377600;1.000000;;
   0.500000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  57;
  0.000000;0.900590;0.434669;,
  0.390009;0.920811;0.000000;,
  -0.390011;0.920810;0.000000;,
  0.000000;0.463517;0.886088;,
  0.846919;0.531722;0.000000;,
  -0.846903;0.531748;0.000000;,
  0.000000;0.276154;0.961113;,
  0.943793;0.330537;0.000000;,
  -0.943783;0.330566;0.000000;,
  0.987068;0.160302;0.000000;,
  -0.987068;0.160300;0.000000;,
  0.976271;0.216554;0.000000;,
  0.974085;0.226183;0.000000;,
  -0.968351;0.249592;0.000000;,
  -0.980985;0.194084;0.000001;,
  0.000000;0.958200;0.286100;,
  0.000000;0.900593;-0.434664;,
  0.000000;0.900593;-0.434664;,
  0.000000;0.958201;-0.286097;,
  0.000000;0.900593;-0.434664;,
  0.000000;0.463529;-0.886082;,
  0.000000;0.463529;-0.886082;,
  0.000000;0.463529;-0.886082;,
  0.000000;0.276154;0.961113;,
  0.000000;0.273717;0.961810;,
  0.000000;0.276154;0.961113;,
  0.000000;0.276154;0.961113;,
  0.000000;0.276161;-0.961111;,
  0.000000;0.276161;-0.961111;,
  0.000000;0.276161;-0.961111;,
  0.000000;0.199292;0.979940;,
  0.000000;0.133159;-0.991095;,
  0.000000;0.106489;-0.994314;,
  0.000000;0.133159;-0.991095;,
  0.000000;0.133159;-0.991095;,
  0.000000;0.106489;-0.994314;,
  0.000000;0.165991;0.986127;,
  0.000000;0.000000;-1.000000;,
  0.136935;0.990580;0.000000;,
  -0.136935;0.990580;0.000000;,
  0.987068;0.160302;0.000000;,
  0.975191;0.221366;0.000000;,
  -0.975104;0.221748;0.000000;,
  0.906208;0.422831;0.000000;,
  0.897683;0.440642;0.000000;,
  -0.924663;0.380787;0.000001;,
  -0.875407;0.483386;0.000000;,
  0.000000;0.325309;0.945608;,
  0.000000;0.329444;0.944175;,
  0.000000;0.622125;0.782918;,
  0.000000;0.463517;0.886088;,
  0.000000;0.622134;-0.782911;,
  0.000000;0.199292;0.979940;,
  0.000000;0.167070;0.985945;,
  0.000000;0.622134;-0.782911;,
  0.718249;0.695786;0.000000;,
  0.000000;0.164912;0.986308;;
  104;
  4;19,17,20,20;,
  4;1,38,4,4;,
  4;5,5,8,8;,
  4;2,39,5,5;,
  4;4,4,7,7;,
  4;2,5,5,39;,
  4;49,50,3,0;,
  4;3,26,24,3;,
  4;51,19,20,20;,
  4;7,7,40,9;,
  4;21,27,27,20;,
  4;9,40,41,12;,
  4;8,10,10,8;,
  4;40,9,11,41;,
  4;10,10,14,42;,
  4;52,30,36,53;,
  4;28,33,33,29;,
  4;27,31,31,27;,
  4;27,31,32,28;,
  4;27,29,33,34;,
  4;27,27,34,35;,
  4;29,27,35,33;,
  4;28,29,33,33;,
  4;20,27,28,21;,
  4;21,28,28,22;,
  4;20,22,29,27;,
  4;20,20,27,27;,
  4;20,20,27,29;,
  4;20,20,29,28;,
  4;3,24,6,3;,
  4;3,6,6,3;,
  4;3,3,6,25;,
  4;3,3,25,24;,
  4;3,3,24,23;,
  4;3,3,23,6;,
  4;50,26,26,3;,
  4;0,3,3,0;,
  4;0,3,3,0;,
  4;0,3,3,15;,
  4;0,15,3,3;,
  4;0,0,3,3;,
  4;0,0,3,3;,
  4;54,21,20,16;,
  4;16,20,21,17;,
  4;17,21,22,17;,
  4;17,22,22,18;,
  4;16,18,22,20;,
  4;17,16,20,20;,
  4;0,0,3,3;,
  4;7,9,40,7;,
  4;10,10,42,13;,
  4;4,7,7,4;,
  4;55,4,4,38;,
  4;5,8,8,5;,
  4;8,8,10,10;,
  3;37,31,31;,
  3;37,35,34;,
  4;30,52,56,36;,
  3;24,25,30;,
  4;37,37,37,37;,
  4;37,37,37,37;,
  4;41,11,43,43;,
  4;12,41,44,44;,
  4;42,14,45,45;,
  4;13,42,46,46;,
  4;36,56,47,47;,
  4;53,36,48,48;,
  4;28,32,33,28;,
  4;22,28,29,22;,
  3;0,15,39;,
  3;31,37,32;,
  3;33,37,33;,
  3;37,32,37;,
  3;32,37,33;,
  3;35,37,33;,
  3;33,33,37;,
  3;37,34,33;,
  3;35,37,37;,
  3;26,52,24;,
  3;6,30,6;,
  3;24,52,23;,
  3;24,30,6;,
  3;23,52,6;,
  3;6,30,25;,
  3;52,26,26;,
  3;24,30,52;,
  3;30,24,52;,
  3;38,0,0;,
  3;0,38,0;,
  3;38,0,0;,
  3;16,38,1;,
  3;18,38,17;,
  3;17,38,16;,
  3;38,15,0;,
  3;0,39,0;,
  3;38,18,15;,
  3;17,38,17;,
  3;19,39,17;,
  3;16,39,18;,
  3;15,18,39;,
  3;0,39,2;,
  3;39,19,2;,
  3;17,39,16;,
  3;0,39,0;;
 }
 MeshTextureCoords {
  98;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
