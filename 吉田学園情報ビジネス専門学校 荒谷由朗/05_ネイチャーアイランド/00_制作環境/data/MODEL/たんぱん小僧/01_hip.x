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
 24;
 -6.27753;2.37297;-5.22330;,
 6.24706;2.37297;-5.22330;,
 6.24706;-2.42193;-5.22330;,
 -6.27753;-2.42193;-5.22330;,
 6.24706;4.73566;-3.66149;,
 -6.27753;4.73566;-3.66149;,
 8.51734;-2.42193;-3.66149;,
 8.51734;2.37297;-3.66149;,
 -6.27753;-4.78463;-3.66149;,
 6.24706;-4.78463;-3.66149;,
 -8.54782;2.37297;-3.66149;,
 -8.54782;-2.42193;-3.66149;,
 8.51734;2.37297;3.57834;,
 8.51734;-2.42193;3.57834;,
 6.24706;4.73566;3.57834;,
 6.24706;-2.42193;5.14015;,
 6.24706;2.37297;5.14015;,
 6.24706;-4.78463;3.57834;,
 -6.27753;2.37297;5.14015;,
 -6.27753;-2.42193;5.14015;,
 -6.27753;4.73566;3.57834;,
 -8.54782;-2.42193;3.57834;,
 -8.54782;2.37297;3.57834;,
 -6.27753;-4.78463;3.57834;;
 
 26;
 4;0,1,2,3;,
 4;4,1,0,5;,
 4;6,2,1,7;,
 4;8,3,2,9;,
 4;10,0,3,11;,
 3;10,5,0;,
 3;4,7,1;,
 3;6,9,2;,
 3;8,11,3;,
 4;7,12,13,6;,
 4;14,12,7,4;,
 4;15,13,12,16;,
 4;9,6,13,17;,
 3;14,16,12;,
 3;15,17,13;,
 4;16,18,19,15;,
 4;20,18,16,14;,
 4;21,19,18,22;,
 4;17,15,19,23;,
 3;20,22,18;,
 3;21,23,19;,
 4;22,10,11,21;,
 4;5,10,22,20;,
 4;23,21,11,8;,
 4;20,14,4,5;,
 4;8,9,17,23;;
 
 MeshMaterialList {
  6;
  26;
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
   0.109600;0.313600;0.536800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.743200;0.712000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.109600;0.109600;0.109600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.514400;0.329600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.536800;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.332800;0.332800;0.332800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  24;
  -0.288351;0.278926;-0.915999;,
  0.288352;0.278926;-0.915999;,
  0.288352;-0.278925;-0.915999;,
  -0.288351;-0.278925;-0.915999;,
  0.820514;0.344968;-0.455800;,
  0.820514;0.344968;0.455800;,
  0.820515;-0.344967;0.455800;,
  0.820515;-0.344967;-0.455800;,
  0.288352;0.278926;0.915999;,
  -0.288351;0.278926;0.915999;,
  -0.288351;-0.278925;0.915999;,
  0.288352;-0.278925;0.915999;,
  -0.820513;0.344969;0.455801;,
  -0.820513;0.344969;-0.455801;,
  -0.820514;-0.344968;-0.455801;,
  -0.820514;-0.344968;0.455801;,
  -0.362181;0.809042;0.462900;,
  0.362182;0.809042;0.462899;,
  0.362182;0.809042;-0.462899;,
  -0.362181;0.809042;-0.462900;,
  -0.362182;-0.809041;-0.462900;,
  0.362183;-0.809041;-0.462900;,
  0.362183;-0.809041;0.462900;,
  -0.362182;-0.809041;0.462900;;
  26;
  4;0,1,2,3;,
  4;18,1,0,19;,
  4;7,2,1,4;,
  4;20,3,2,21;,
  4;13,0,3,14;,
  3;13,19,0;,
  3;18,4,1;,
  3;7,21,2;,
  3;20,14,3;,
  4;4,5,6,7;,
  4;17,5,4,18;,
  4;11,6,5,8;,
  4;21,7,6,22;,
  3;17,8,5;,
  3;11,22,6;,
  4;8,9,10,11;,
  4;16,9,8,17;,
  4;15,10,9,12;,
  4;22,11,10,23;,
  3;16,12,9;,
  3;15,23,10;,
  4;12,13,14,15;,
  4;19,13,12,16;,
  4;23,15,14,20;,
  4;16,17,18,19;,
  4;20,21,22,23;;
 }
 MeshTextureCoords {
  24;
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
