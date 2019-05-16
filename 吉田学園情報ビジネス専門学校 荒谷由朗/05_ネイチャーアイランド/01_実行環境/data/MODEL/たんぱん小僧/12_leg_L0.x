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
 100;
 -1.92749;-1.84044;-2.61624;,
 -0.75425;-2.13842;-3.23910;,
 -0.88339;-6.84950;-4.12757;,
 -2.27447;-6.92160;-3.52750;,
 0.60007;-2.10423;-3.26913;,
 0.66466;-6.82971;-4.16421;,
 2.22478;-1.84044;-2.61624;,
 2.57176;-6.92160;-3.52750;,
 -0.86358;-11.21411;-4.02371;,
 -2.21296;-11.23690;-3.43730;,
 0.65474;-11.20829;-4.05923;,
 2.51025;-11.23690;-3.43730;,
 -0.75997;-15.62928;-3.61744;,
 -1.98257;-15.60284;-3.09274;,
 0.60294;-15.63730;-3.65253;,
 2.27986;-15.60284;-3.09274;,
 -0.47954;-20.66481;-2.83313;,
 -1.90861;-20.13436;-2.22564;,
 0.75304;-20.68229;-2.83136;,
 2.20590;-20.13436;-2.22564;,
 1.03767;-0.91495;-2.49419;,
 -0.29586;-0.86307;-2.50897;,
 2.97667;-15.60041;-2.36260;,
 3.32910;-11.24457;-2.58147;,
 3.38712;-6.93860;-2.65986;,
 -3.08983;-6.93860;-2.65986;,
 -3.03182;-11.24457;-2.58147;,
 -2.67938;-15.60041;-2.36260;,
 2.75766;-1.60397;-1.16305;,
 3.78456;-6.80554;-1.31160;,
 3.19743;-2.36130;0.00957;,
 3.87420;-6.75289;0.00957;,
 2.75766;-1.60397;1.18219;,
 3.78456;-6.80554;1.33074;,
 2.22478;-1.84044;2.63539;,
 3.38712;-6.93860;2.67901;,
 3.71644;-11.20895;-1.28757;,
 3.80349;-11.19463;0.00957;,
 3.71644;-11.20895;1.30670;,
 3.32910;-11.24457;2.60062;,
 3.34414;-15.66137;-1.16835;,
 3.43035;-15.68510;0.00957;,
 3.34414;-15.66137;1.18750;,
 2.97667;-15.60041;2.38175;,
 2.52612;-20.73268;-1.06683;,
 2.60520;-20.82971;0.00957;,
 2.52612;-20.73268;1.08598;,
 2.20590;-20.13436;2.24478;,
 2.45134;-0.98301;0.00957;,
 2.27986;-15.60284;3.11188;,
 2.51025;-11.23690;3.45644;,
 2.57176;-6.92160;3.54664;,
 0.60007;-2.10423;3.28828;,
 0.66466;-6.82971;4.18336;,
 -0.75425;-2.13842;3.25825;,
 -0.88339;-6.51905;4.14673;,
 -1.92749;-1.84044;2.63539;,
 -2.27447;-6.59113;3.54664;,
 0.65474;-11.20829;4.07838;,
 -0.86358;-10.88363;4.04285;,
 -2.21296;-10.90643;3.45644;,
 0.60294;-15.63730;3.67168;,
 -0.75997;-15.62928;3.63658;,
 -1.98257;-15.60284;3.11188;,
 0.75304;-20.68229;2.85051;,
 -0.47954;-20.66481;2.85228;,
 -1.90861;-20.13436;2.24478;,
 -0.29586;-0.86307;2.52812;,
 1.03767;-0.91495;2.51334;,
 -2.67938;-15.60041;2.38175;,
 -3.03182;-10.91410;2.60062;,
 -3.08983;-6.60812;2.67901;,
 -2.46037;-1.60397;1.18219;,
 -3.48729;-6.47509;1.33074;,
 -2.90014;-2.36130;0.00957;,
 -3.57693;-6.42244;0.00957;,
 -2.46037;-1.60397;-1.16305;,
 -3.48729;-6.80554;-1.31160;,
 -3.41917;-10.87848;1.30670;,
 -3.50621;-11.19463;0.00957;,
 -3.41917;-11.20895;-1.28757;,
 -3.04687;-15.66137;1.18750;,
 -3.13307;-15.68510;0.00957;,
 -3.04687;-15.66137;-1.16835;,
 -2.22883;-20.73268;1.08598;,
 -2.30792;-20.82971;0.00957;,
 -2.22883;-20.73268;-1.06683;,
 -2.15405;-0.98301;0.00957;,
 -0.79198;0.89835;1.21250;,
 0.61894;0.95239;1.22137;,
 -0.81282;1.03690;0.00957;,
 0.62936;1.09095;0.00957;,
 -0.79198;0.89835;-1.19336;,
 0.61894;0.95239;-1.20221;,
 -0.89242;-22.24058;-1.29025;,
 0.66917;-22.31010;-1.31032;,
 -0.94011;-22.42344;0.00957;,
 0.69303;-22.49295;0.00957;,
 -0.89242;-22.24058;1.30940;,
 0.66917;-22.31008;1.32946;;
 
 196;
 3;0,1,2;,
 3;0,2,3;,
 3;1,4,5;,
 3;1,5,2;,
 3;6,7,5;,
 3;6,5,4;,
 3;3,2,8;,
 3;3,8,9;,
 3;5,10,8;,
 3;5,8,2;,
 3;7,11,10;,
 3;7,10,5;,
 3;8,12,13;,
 3;8,13,9;,
 3;10,14,12;,
 3;10,12,8;,
 3;10,11,15;,
 3;10,15,14;,
 3;12,16,17;,
 3;12,17,13;,
 3;14,16,12;,
 3;14,18,16;,
 3;14,15,19;,
 3;14,19,18;,
 3;6,4,20;,
 3;20,4,21;,
 3;4,1,21;,
 3;1,0,21;,
 3;19,15,22;,
 3;15,11,23;,
 3;15,23,22;,
 3;11,7,24;,
 3;11,24,23;,
 3;7,6,24;,
 3;0,3,25;,
 3;25,3,9;,
 3;25,9,26;,
 3;26,9,13;,
 3;26,13,27;,
 3;27,13,17;,
 3;6,28,29;,
 3;6,29,24;,
 3;28,30,31;,
 3;28,31,29;,
 3;32,33,31;,
 3;32,31,30;,
 3;34,35,33;,
 3;34,33,32;,
 3;24,29,36;,
 3;24,36,23;,
 3;29,31,37;,
 3;29,37,36;,
 3;33,38,37;,
 3;33,37,31;,
 3;35,39,38;,
 3;35,38,33;,
 3;36,40,22;,
 3;36,22,23;,
 3;37,41,40;,
 3;37,40,36;,
 3;37,38,42;,
 3;37,42,41;,
 3;38,39,43;,
 3;38,43,42;,
 3;40,44,19;,
 3;40,19,22;,
 3;41,45,44;,
 3;41,44,40;,
 3;41,42,46;,
 3;41,46,45;,
 3;42,43,47;,
 3;42,47,46;,
 3;32,30,48;,
 3;30,28,48;,
 3;47,43,49;,
 3;49,43,39;,
 3;49,39,50;,
 3;50,39,35;,
 3;50,35,51;,
 3;35,34,51;,
 3;34,52,53;,
 3;34,53,51;,
 3;54,55,53;,
 3;54,53,52;,
 3;56,57,55;,
 3;56,55,54;,
 3;51,53,58;,
 3;51,58,50;,
 3;55,59,58;,
 3;55,58,53;,
 3;57,60,59;,
 3;57,59,55;,
 3;58,61,49;,
 3;58,49,50;,
 3;58,59,62;,
 3;58,62,61;,
 3;59,60,63;,
 3;59,63,62;,
 3;61,64,47;,
 3;61,47,49;,
 3;61,65,64;,
 3;61,62,65;,
 3;62,63,66;,
 3;62,66,65;,
 3;56,54,67;,
 3;67,54,52;,
 3;52,68,67;,
 3;52,34,68;,
 3;66,63,69;,
 3;63,60,70;,
 3;63,70,69;,
 3;60,57,71;,
 3;60,71,70;,
 3;57,56,71;,
 3;56,72,73;,
 3;56,73,71;,
 3;72,74,75;,
 3;72,75,73;,
 3;76,77,75;,
 3;76,75,74;,
 3;0,25,77;,
 3;0,77,76;,
 3;71,73,78;,
 3;71,78,70;,
 3;75,79,78;,
 3;75,78,73;,
 3;77,80,79;,
 3;77,79,75;,
 3;25,26,80;,
 3;25,80,77;,
 3;78,81,69;,
 3;78,69,70;,
 3;79,82,81;,
 3;79,81,78;,
 3;79,80,83;,
 3;79,83,82;,
 3;80,26,27;,
 3;80,27,83;,
 3;81,84,66;,
 3;81,66,69;,
 3;82,85,84;,
 3;82,84,81;,
 3;82,83,86;,
 3;82,86,85;,
 3;83,27,17;,
 3;83,17,86;,
 3;76,74,87;,
 3;74,72,87;,
 3;56,67,88;,
 3;56,88,72;,
 3;67,89,88;,
 3;68,89,67;,
 3;34,32,89;,
 3;34,89,68;,
 3;72,88,90;,
 3;72,90,87;,
 3;88,89,91;,
 3;88,91,90;,
 3;32,48,91;,
 3;32,91,89;,
 3;90,92,76;,
 3;90,76,87;,
 3;91,93,92;,
 3;91,92,90;,
 3;91,48,28;,
 3;91,28,93;,
 3;92,21,0;,
 3;92,0,76;,
 3;93,21,92;,
 3;93,20,21;,
 3;93,28,6;,
 3;93,6,20;,
 3;17,16,94;,
 3;17,94,86;,
 3;16,18,95;,
 3;16,95,94;,
 3;19,44,95;,
 3;19,95,18;,
 3;86,94,96;,
 3;86,96,85;,
 3;94,95,97;,
 3;94,97,96;,
 3;44,45,97;,
 3;44,97,95;,
 3;96,98,84;,
 3;96,84,85;,
 3;97,99,98;,
 3;97,98,96;,
 3;97,45,46;,
 3;97,46,99;,
 3;98,65,66;,
 3;98,66,84;,
 3;99,64,65;,
 3;99,65,98;,
 3;99,46,47;,
 3;99,47,64;;
 
 MeshMaterialList {
  8;
  196;
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  0,
  0,
  0,
  0,
  3,
  3,
  3,
  0,
  0,
  0,
  0,
  0,
  0,
  3,
  3,
  3,
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  0,
  0,
  3,
  3,
  3,
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  0,
  0,
  0,
  0,
  3,
  3,
  3,
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
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
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
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
  Material {
   0.640000;0.640000;0.640000;1.000000;;
   0.500000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "heimin.jpg";
   }
  }
  Material {
   0.640000;0.640000;0.640000;1.000000;;
   0.500000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "heimin.jpg";
   }
  }
 }
 MeshNormals {
  100;
  -0.637806;0.343725;-0.689244;,
  -0.162587;0.331642;-0.929290;,
  0.119354;0.382781;-0.916097;,
  -0.540995;0.058418;-0.838995;,
  -0.259565;0.103606;-0.960152;,
  0.128068;0.097503;-0.986961;,
  0.496780;0.059141;-0.865859;,
  -0.604568;-0.052464;-0.794824;,
  -0.240539;-0.054554;-0.969105;,
  0.173024;-0.063324;-0.982880;,
  0.577070;-0.052481;-0.815007;,
  -0.567645;-0.117887;-0.814789;,
  -0.220744;-0.131540;-0.966421;,
  0.170285;-0.138329;-0.975637;,
  0.532788;-0.118908;-0.837853;,
  -0.178300;-0.425512;-0.887214;,
  0.179877;0.544954;-0.818944;,
  -0.090771;0.553245;-0.828058;,
  0.879000;-0.119659;-0.461564;,
  0.837739;-0.065187;-0.542166;,
  0.863742;0.052168;-0.501226;,
  0.625380;0.351025;-0.696908;,
  0.243239;-0.426430;-0.871201;,
  0.683134;-0.313270;-0.659689;,
  -0.863739;0.052168;-0.501232;,
  -0.837736;-0.065187;-0.542171;,
  -0.878996;-0.119659;-0.461570;,
  -0.701940;-0.289195;-0.650882;,
  0.881877;0.429232;-0.195072;,
  0.946816;0.321776;-0.000000;,
  0.881877;0.429232;0.195071;,
  0.976461;0.093374;-0.194438;,
  0.993854;0.110699;-0.000000;,
  0.976461;0.093374;0.194437;,
  0.863741;0.052168;0.501228;,
  0.975249;-0.052685;-0.214741;,
  0.998752;-0.049935;0.000000;,
  0.975249;-0.052684;0.214739;,
  0.837738;-0.065187;0.542168;,
  0.973301;-0.124443;-0.192868;,
  0.990975;-0.134046;-0.000000;,
  0.973301;-0.124443;0.192869;,
  0.878999;-0.119659;0.461565;,
  0.857769;-0.465372;-0.218316;,
  0.874479;-0.485064;-0.000000;,
  0.857767;-0.465374;0.218319;,
  0.820883;0.571096;0.000000;,
  0.683134;-0.313271;0.659689;,
  0.532787;-0.118908;0.837854;,
  0.577069;-0.052481;0.815008;,
  0.496781;0.059141;0.865859;,
  0.625381;0.351024;0.696908;,
  0.119354;0.382781;0.916097;,
  -0.153128;0.337029;0.928958;,
  0.159538;0.119800;0.979896;,
  -0.214724;0.089019;0.972609;,
  -0.540948;0.063376;0.838665;,
  0.144880;-0.057733;0.987763;,
  -0.280024;-0.056214;0.958346;,
  -0.604662;-0.049819;0.794923;,
  0.170285;-0.138329;0.975637;,
  -0.223844;-0.129352;0.966003;,
  -0.567934;-0.113498;0.815211;,
  -0.090773;0.553245;0.828058;,
  0.179877;0.544953;0.818945;,
  -0.879415;-0.115796;0.461758;,
  -0.837925;-0.061204;0.542343;,
  -0.863406;0.056584;0.501326;,
  -0.635143;0.351781;0.687637;,
  0.243242;-0.426434;0.871199;,
  -0.178300;-0.425514;0.887213;,
  -0.701940;-0.289194;0.650882;,
  -0.944926;0.327286;-0.000000;,
  -0.902622;0.386881;-0.188670;,
  -0.967654;0.123217;0.220143;,
  -0.995157;0.098227;0.003763;,
  -0.974929;0.093558;-0.201892;,
  -0.979345;-0.044719;0.197191;,
  -0.998540;-0.053721;-0.005650;,
  -0.975248;-0.052685;-0.214745;,
  -0.972888;-0.122479;0.196182;,
  -0.990975;-0.134047;-0.000000;,
  -0.973301;-0.124445;-0.192870;,
  -0.890085;-0.404342;0.210371;,
  -0.907392;-0.420285;-0.000000;,
  -0.890085;-0.404342;-0.210371;,
  -0.857144;0.515076;-0.000000;,
  -0.902500;0.390478;0.181715;,
  -0.383072;0.810123;0.443798;,
  0.348453;0.757761;0.551705;,
  -0.629320;0.777146;-0.000000;,
  0.400398;0.916341;-0.000000;,
  -0.383070;0.810123;-0.443800;,
  0.348454;0.757761;-0.551704;,
  -0.384415;-0.820573;-0.422947;,
  0.302710;-0.800171;-0.517776;,
  -0.560841;-0.827924;-0.000001;,
  0.330017;-0.943975;0.000004;,
  -0.384411;-0.820574;0.422950;,
  0.302712;-0.800171;0.517776;;
  196;
  3;0,1,4;,
  3;0,4,3;,
  3;1,2,5;,
  3;1,5,4;,
  3;21,6,5;,
  3;21,5,2;,
  3;3,4,8;,
  3;3,8,7;,
  3;5,9,8;,
  3;5,8,4;,
  3;6,10,9;,
  3;6,9,5;,
  3;8,12,11;,
  3;8,11,7;,
  3;9,13,12;,
  3;9,12,8;,
  3;9,10,14;,
  3;9,14,13;,
  3;12,15,27;,
  3;12,27,11;,
  3;13,15,12;,
  3;13,22,15;,
  3;13,14,23;,
  3;13,23,22;,
  3;21,2,16;,
  3;16,2,17;,
  3;2,1,17;,
  3;1,0,17;,
  3;23,14,18;,
  3;14,10,19;,
  3;14,19,18;,
  3;10,6,20;,
  3;10,20,19;,
  3;6,21,20;,
  3;0,3,24;,
  3;24,3,7;,
  3;24,7,25;,
  3;25,7,11;,
  3;25,11,26;,
  3;26,11,27;,
  3;21,28,31;,
  3;21,31,20;,
  3;28,29,32;,
  3;28,32,31;,
  3;30,33,32;,
  3;30,32,29;,
  3;51,34,33;,
  3;51,33,30;,
  3;20,31,35;,
  3;20,35,19;,
  3;31,32,36;,
  3;31,36,35;,
  3;33,37,36;,
  3;33,36,32;,
  3;34,38,37;,
  3;34,37,33;,
  3;35,39,18;,
  3;35,18,19;,
  3;36,40,39;,
  3;36,39,35;,
  3;36,37,41;,
  3;36,41,40;,
  3;37,38,42;,
  3;37,42,41;,
  3;39,43,23;,
  3;39,23,18;,
  3;40,44,43;,
  3;40,43,39;,
  3;40,41,45;,
  3;40,45,44;,
  3;41,42,47;,
  3;41,47,45;,
  3;30,29,46;,
  3;29,28,46;,
  3;47,42,48;,
  3;48,42,38;,
  3;48,38,49;,
  3;49,38,34;,
  3;49,34,50;,
  3;34,51,50;,
  3;51,52,54;,
  3;51,54,50;,
  3;53,55,54;,
  3;53,54,52;,
  3;68,56,55;,
  3;68,55,53;,
  3;50,54,57;,
  3;50,57,49;,
  3;55,58,57;,
  3;55,57,54;,
  3;56,59,58;,
  3;56,58,55;,
  3;57,60,48;,
  3;57,48,49;,
  3;57,58,61;,
  3;57,61,60;,
  3;58,59,62;,
  3;58,62,61;,
  3;60,69,47;,
  3;60,47,48;,
  3;60,70,69;,
  3;60,61,70;,
  3;61,62,71;,
  3;61,71,70;,
  3;68,53,63;,
  3;63,53,52;,
  3;52,64,63;,
  3;52,51,64;,
  3;71,62,65;,
  3;62,59,66;,
  3;62,66,65;,
  3;59,56,67;,
  3;59,67,66;,
  3;56,68,67;,
  3;68,87,74;,
  3;68,74,67;,
  3;87,72,75;,
  3;87,75,74;,
  3;73,76,75;,
  3;73,75,72;,
  3;0,24,76;,
  3;0,76,73;,
  3;67,74,77;,
  3;67,77,66;,
  3;75,78,77;,
  3;75,77,74;,
  3;76,79,78;,
  3;76,78,75;,
  3;24,25,79;,
  3;24,79,76;,
  3;77,80,65;,
  3;77,65,66;,
  3;78,81,80;,
  3;78,80,77;,
  3;78,79,82;,
  3;78,82,81;,
  3;79,25,26;,
  3;79,26,82;,
  3;80,83,71;,
  3;80,71,65;,
  3;81,84,83;,
  3;81,83,80;,
  3;81,82,85;,
  3;81,85,84;,
  3;82,26,27;,
  3;82,27,85;,
  3;73,72,86;,
  3;72,87,86;,
  3;68,63,88;,
  3;68,88,87;,
  3;63,89,88;,
  3;64,89,63;,
  3;51,30,89;,
  3;51,89,64;,
  3;87,88,90;,
  3;87,90,86;,
  3;88,89,91;,
  3;88,91,90;,
  3;30,46,91;,
  3;30,91,89;,
  3;90,92,73;,
  3;90,73,86;,
  3;91,93,92;,
  3;91,92,90;,
  3;91,46,28;,
  3;91,28,93;,
  3;92,17,0;,
  3;92,0,73;,
  3;93,17,92;,
  3;93,16,17;,
  3;93,28,21;,
  3;93,21,16;,
  3;27,15,94;,
  3;27,94,85;,
  3;15,22,95;,
  3;15,95,94;,
  3;23,43,95;,
  3;23,95,22;,
  3;85,94,96;,
  3;85,96,84;,
  3;94,95,97;,
  3;94,97,96;,
  3;43,44,97;,
  3;43,97,95;,
  3;96,98,83;,
  3;96,83,84;,
  3;97,99,98;,
  3;97,98,96;,
  3;97,44,45;,
  3;97,45,99;,
  3;98,70,71;,
  3;98,71,83;,
  3;99,69,70;,
  3;99,70,98;,
  3;99,45,47;,
  3;99,47,69;;
 }
 MeshTextureCoords {
  100;
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
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
