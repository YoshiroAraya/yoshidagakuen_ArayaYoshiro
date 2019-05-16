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
 130;
 0.14685;0.76388;-1.51930;,
 0.14685;0.76388;-3.54046;,
 0.14685;1.71444;-2.40212;,
 0.14685;1.71444;-1.29981;,
 -2.43709;0.96863;-3.66590;,
 -5.17468;0.90494;-3.39860;,
 -4.03696;2.17289;-2.40214;,
 -1.99215;2.29227;-2.40214;,
 -5.17468;0.90494;1.36913;,
 -5.17468;0.90494;2.95837;,
 -4.03696;2.17289;2.00715;,
 -4.03696;2.17289;0.90484;,
 -2.43711;0.96863;2.60494;,
 0.14685;0.76388;2.44612;,
 0.14685;1.71444;2.00715;,
 -1.99215;2.29227;2.00715;,
 -1.77873;0.56068;0.96697;,
 -1.77873;0.56068;2.13845;,
 -3.79563;0.27214;2.43060;,
 -3.79563;0.27214;1.10524;,
 -1.99215;2.29227;0.90484;,
 0.14685;1.71444;0.90484;,
 0.14685;-0.18669;2.00715;,
 -4.55991;-1.04884;1.36191;,
 -5.31224;-0.32687;1.54710;,
 -1.99801;0.56068;-2.54746;,
 -3.79563;0.27214;-2.87082;,
 0.14685;-0.18669;-1.29981;,
 -0.01749;-0.18669;-1.97113;,
 0.14685;-0.18669;0.90484;,
 0.14685;0.76388;1.12430;,
 0.14685;-0.18669;-0.19750;,
 0.14685;0.76388;-0.19750;,
 -5.35528;-0.27590;-3.13999;,
 -5.35528;-0.27590;-1.98485;,
 -5.17468;0.90494;-1.80937;,
 -3.79563;0.27214;-1.54548;,
 -4.50844;-1.07516;-1.41346;,
 -5.34334;-0.27396;-1.61897;,
 -5.35114;-0.26684;1.19101;,
 -4.50096;-1.08270;0.98173;,
 -1.99215;2.29227;-1.29981;,
 -1.99215;2.29227;-0.19750;,
 0.14685;1.71444;-0.19750;,
 -1.77873;0.56068;-1.37598;,
 -1.77873;0.56068;-0.20450;,
 -3.79563;0.27214;-0.22012;,
 -4.03696;2.17289;-1.29981;,
 -5.17468;0.90494;-0.22012;,
 -4.03696;2.17289;-0.19750;,
 -4.61209;-1.89600;1.36191;,
 -5.36442;-1.17405;1.54710;,
 -5.31224;-0.32687;2.66233;,
 -4.55991;-1.04884;2.29197;,
 -5.35114;-0.26684;-0.06930;,
 -5.42593;-1.08182;-0.06930;,
 -5.42593;-1.08182;1.19101;,
 -4.50094;-1.08270;-0.06930;,
 -4.62279;-1.82927;-1.41346;,
 -5.45769;-1.02807;-1.61897;,
 -4.50844;-1.07516;-0.38132;,
 -5.34334;-0.27396;-0.38132;,
 -5.54919;-1.13401;-1.98485;,
 -4.70224;-1.94675;-1.72620;,
 -4.50834;-1.08866;-1.72620;,
 -4.50834;-1.08866;-2.77323;,
 -4.61209;-1.89600;2.29197;,
 -5.36442;-1.17405;2.66233;,
 -3.91521;-2.24322;1.36191;,
 -3.91521;-2.24322;2.29197;,
 -4.57573;-1.89770;-0.06930;,
 -4.57573;-1.89770;0.98173;,
 -3.83006;-2.22966;-0.06930;,
 -3.83006;-2.22966;0.98173;,
 -4.62279;-1.82927;-0.38132;,
 -5.45769;-1.02807;-0.38132;,
 -3.21984;-1.56010;-1.28125;,
 -3.30491;-2.12101;-1.28125;,
 -4.70224;-1.94675;-2.77323;,
 -5.54919;-1.13401;-3.13999;,
 -3.04848;-1.76810;-2.46731;,
 -3.12907;-2.12475;-2.46731;,
 -3.86302;-1.39604;2.29197;,
 -3.36914;-1.41742;2.18577;,
 -3.36914;-1.41742;1.46813;,
 -3.86302;-1.39604;1.36191;,
 -3.40943;-2.07112;2.18577;,
 -2.90514;-1.97009;2.01757;,
 -2.88374;-1.62279;2.01757;,
 -3.40943;-2.07112;1.46813;,
 -3.75529;-1.41468;-0.06930;,
 -3.23938;-1.61079;0.10538;,
 -3.28931;-2.15485;0.10538;,
 -3.75529;-1.41468;0.98173;,
 -3.28931;-2.15485;0.80705;,
 -3.05172;-2.06366;0.65585;,
 -3.02332;-1.75404;0.65585;,
 -3.23938;-1.61079;0.80705;,
 -3.05172;-2.06366;0.25658;,
 -3.02332;-1.75404;0.25658;,
 -2.90514;-1.97009;1.63631;,
 -2.88374;-1.62279;1.63631;,
 -3.30491;-2.12101;-0.51353;,
 -2.77219;-2.15297;-0.60549;,
 -2.70750;-1.72642;-0.60549;,
 -3.21984;-1.56010;-0.51353;,
 -2.77219;-2.15297;-1.18930;,
 -2.70750;-1.72642;-1.18930;,
 -3.12907;-2.12475;-2.03212;,
 -2.67976;-2.18423;-2.10959;,
 -2.62787;-1.95455;-2.10959;,
 -3.04848;-1.76810;-2.03212;,
 -2.67976;-2.18423;-2.38984;,
 -2.62787;-1.95455;-2.38984;,
 -1.43623;-1.95307;-2.65393;,
 -1.20274;-1.99183;-1.53534;,
 -0.50965;-2.40856;-2.00958;,
 -1.69326;-3.28933;-1.55426;,
 -1.66951;-3.14145;-3.11921;,
 -1.37948;-2.64799;-3.40277;,
 -2.75497;-2.99611;-2.93573;,
 -3.10125;-2.14911;-2.54508;,
 -2.12039;-2.17811;-2.65301;,
 -2.13793;-2.22688;-1.48587;,
 -3.64908;-2.05758;-2.46667;,
 -3.68250;-2.09554;-1.56854;,
 -3.13835;-2.19126;-1.54776;,
 -2.80877;-3.12289;-1.59839;,
 -3.42353;-2.82035;-2.80159;,
 -3.38570;-2.93452;-1.61413;;
 
 128;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,15,14,21;,
 4;17,22,13,12;,
 4;19,23,24,8;,
 4;25,26,5,4;,
 4;27,28,1,0;,
 4;22,29,30,13;,
 4;29,31,32,30;,
 4;31,27,0,32;,
 4;5,33,34,35;,
 4;36,37,38,35;,
 4;8,39,40,19;,
 4;7,41,3,2;,
 4;41,42,43,3;,
 4;42,20,21,43;,
 4;25,44,36,26;,
 4;44,45,46,36;,
 4;45,16,19,46;,
 4;5,35,47,6;,
 4;35,48,49,47;,
 4;48,8,11,49;,
 4;13,30,21,14;,
 4;30,32,43,21;,
 4;32,0,3,43;,
 4;23,50,51,24;,
 4;8,24,52,9;,
 4;18,53,23,19;,
 4;9,52,53,18;,
 4;54,55,56,39;,
 4;46,57,54,48;,
 4;19,40,57,46;,
 4;48,54,39,8;,
 4;37,58,59,38;,
 4;46,60,37,36;,
 4;35,38,61,48;,
 4;48,61,60,46;,
 4;34,62,63,64;,
 4;35,34,64,36;,
 4;26,65,33,5;,
 4;36,64,65,26;,
 4;50,66,67,51;,
 4;24,51,67,52;,
 4;50,68,69,66;,
 4;52,67,66,53;,
 4;70,71,56,55;,
 4;57,70,55,54;,
 4;70,72,73,71;,
 4;39,56,71,40;,
 4;58,74,75,59;,
 4;37,76,77,58;,
 4;61,75,74,60;,
 4;38,59,75,61;,
 4;78,63,62,79;,
 4;65,80,81,78;,
 4;33,79,62,34;,
 4;65,78,79,33;,
 4;82,83,84,85;,
 4;66,69,82,53;,
 4;23,85,68,50;,
 4;53,82,85,23;,
 4;86,87,88,83;,
 4;69,86,83,82;,
 4;68,89,86,69;,
 4;85,84,89,68;,
 4;90,91,92,72;,
 4;71,73,93,40;,
 4;40,93,90,57;,
 4;57,90,72,70;,
 4;94,95,96,97;,
 4;93,97,91,90;,
 4;73,94,97,93;,
 4;72,92,94,73;,
 4;96,95,98,99;,
 4;92,98,95,94;,
 4;91,99,98,92;,
 4;97,96,99,91;,
 4;88,87,100,101;,
 4;89,100,87,86;,
 4;84,101,100,89;,
 4;83,88,101,84;,
 4;102,103,104,105;,
 4;60,105,76,37;,
 4;74,102,105,60;,
 4;58,77,102,74;,
 4;104,103,106,107;,
 4;77,106,103,102;,
 4;76,107,106,77;,
 4;105,104,107,76;,
 4;108,109,110,111;,
 4;63,108,111,64;,
 4;64,111,80,65;,
 4;78,81,108,63;,
 4;110,109,112,113;,
 4;111,110,113,80;,
 4;80,113,112,81;,
 4;81,112,109,108;,
 4;31,29,16,45;,
 4;27,31,45,44;,
 4;28,27,44,25;,
 4;49,11,20,42;,
 4;47,49,42,41;,
 4;6,47,41,7;,
 4;25,114,115,28;,
 4;18,17,12,9;,
 4;11,10,15,20;,
 4;29,22,17,16;,
 4;9,12,15,10;,
 4;1,4,7,2;,
 4;116,117,118,119;,
 4;4,119,114,25;,
 4;1,116,119,4;,
 4;28,115,116,1;,
 4;118,120,121,122;,
 4;115,123,117,116;,
 4;119,118,122,114;,
 4;114,122,123,115;,
 4;121,124,125,126;,
 4;122,121,126,123;,
 4;117,127,120,118;,
 4;123,126,127,117;,
 4;125,124,128,129;,
 4;127,129,128,120;,
 4;126,125,129,127;,
 4;120,128,124,121;;
 
 MeshMaterialList {
  1;
  128;
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
   0.294118;0.125490;0.043137;1.000000;;
   0.500000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  165;
  -0.237995;-0.863726;0.444225;,
  0.095753;0.399150;0.911872;,
  0.968563;-0.163756;0.187270;,
  1.000000;0.000000;0.000000;,
  0.472202;-0.814159;0.337891;,
  -0.433972;0.900926;0.000000;,
  0.422323;-0.771608;-0.475673;,
  -0.332683;0.900479;-0.280105;,
  0.976353;-0.165672;-0.138882;,
  -0.466524;0.777837;-0.421101;,
  -0.912574;0.408912;0.000000;,
  0.996565;-0.056990;-0.060088;,
  0.260792;0.965395;0.000000;,
  0.260792;0.965395;0.000000;,
  0.568976;-0.822354;0.000002;,
  0.576788;-0.816894;0.000002;,
  0.103493;-0.161230;-0.981475;,
  -0.433972;0.900926;0.000000;,
  -0.905124;0.425148;0.000000;,
  -0.905368;0.424628;0.000000;,
  -0.908609;0.417648;0.000000;,
  0.999144;-0.028470;-0.030018;,
  -0.996273;0.086258;0.000000;,
  0.865569;-0.500789;-0.000000;,
  -0.239636;-0.029378;-0.970418;,
  -0.160763;-0.019708;-0.986796;,
  0.110189;-0.058742;0.992173;,
  -0.020975;-0.032256;-0.999259;,
  -0.992750;0.120200;0.000000;,
  0.164848;-0.087881;0.982396;,
  0.883916;-0.467647;-0.000000;,
  0.137172;-0.069485;-0.988107;,
  0.157287;-0.096876;-0.982790;,
  -0.989318;0.145775;0.000000;,
  -0.982566;0.185913;0.000000;,
  0.254541;-0.111918;-0.960564;,
  -0.106742;-0.011058;0.994225;,
  -0.931514;-0.363705;0.000000;,
  -0.575748;-0.817627;0.000000;,
  -0.226353;0.013943;-0.973946;,
  -0.113921;0.007017;-0.993465;,
  -0.557872;-0.829927;0.000000;,
  -0.936865;-0.349692;0.000000;,
  -0.471797;-0.881707;0.000000;,
  0.153546;-0.023284;-0.987867;,
  0.209974;-0.031840;-0.977188;,
  -0.946768;-0.321916;0.000000;,
  -0.957703;-0.287757;0.000000;,
  -0.424790;-0.905292;0.000000;,
  -0.029180;0.006594;0.999552;,
  -0.243055;0.054923;0.968456;,
  0.250062;0.968230;0.000000;,
  -0.067084;-0.997747;0.000000;,
  0.219945;0.975512;0.000000;,
  0.265217;-0.016343;0.964050;,
  0.259838;-0.965652;-0.000000;,
  0.157397;-0.014442;0.987430;,
  0.157398;-0.014442;-0.987430;,
  -0.140221;-0.990120;0.000000;,
  0.434265;-0.039845;0.899904;,
  0.434263;-0.039845;-0.899905;,
  0.877292;-0.080486;0.473160;,
  0.877291;-0.080486;-0.473162;,
  0.319895;-0.019714;0.947248;,
  0.998106;-0.061510;-0.000000;,
  0.132663;-0.020119;0.990957;,
  0.132662;-0.020119;-0.990957;,
  0.168545;-0.025561;0.985362;,
  0.988695;-0.149938;-0.000000;,
  0.175575;-0.039672;0.983666;,
  0.175574;-0.039672;-0.983667;,
  0.165003;-0.037280;0.985588;,
  0.975421;-0.220348;-0.000000;,
  -0.047413;-0.982146;-0.182049;,
  0.077882;0.918858;-0.386827;,
  -0.035012;-0.881882;0.470168;,
  0.065762;0.441160;0.895016;,
  0.109889;0.133970;0.984874;,
  0.041334;0.701722;-0.711251;,
  0.102584;0.994724;0.000000;,
  -0.112795;-0.993473;0.016993;,
  -0.113821;-0.993501;0.000000;,
  0.627580;-0.534417;-0.566165;,
  -0.675181;0.278211;0.683176;,
  -0.870612;0.018911;0.491606;,
  0.282279;-0.944489;-0.168104;,
  0.110044;-0.101094;0.988772;,
  -0.315093;0.402549;-0.859459;,
  -0.218183;-0.971310;-0.094617;,
  0.102643;0.993677;0.045504;,
  -0.085081;0.388824;-0.917375;,
  -0.700002;-0.711213;-0.064594;,
  0.171270;0.984056;0.047963;,
  0.102584;0.994724;0.000000;,
  -0.062426;-0.607464;0.791891;,
  -0.252425;-0.072637;-0.964886;,
  0.173272;-0.553806;-0.814417;,
  0.311229;-0.576540;-0.755472;,
  -0.988506;0.151184;0.000000;,
  0.107801;-0.154839;0.982041;,
  0.219114;0.903661;-0.367948;,
  0.578261;-0.815843;-0.003773;,
  0.161712;-0.106012;0.981127;,
  0.334113;-0.136479;0.932600;,
  0.225388;-0.092067;0.969909;,
  0.240011;-0.244205;0.939552;,
  -0.062831;-0.096624;-0.993336;,
  -0.031468;-0.048393;-0.998333;,
  0.887003;-0.461763;0.000009;,
  -0.067020;-0.103001;0.992421;,
  -0.033574;-0.051598;0.998103;,
  0.009893;-0.039347;0.999177;,
  -0.249899;0.004821;0.968260;,
  -0.256103;-0.045293;0.965588;,
  0.287913;-0.146552;-0.946376;,
  0.885857;-0.463958;-0.000000;,
  0.421362;-0.025955;0.906521;,
  0.215784;-0.013292;0.976351;,
  0.000000;0.000000;-1.000000;,
  0.220619;-0.020243;0.975150;,
  0.111001;-0.010185;0.993768;,
  0.000000;0.000000;1.000000;,
  0.048358;-0.007334;0.998803;,
  0.261035;-0.058986;-0.963525;,
  0.334318;-0.075546;-0.939428;,
  0.105423;-0.006496;0.994406;,
  0.105442;-0.006497;-0.994404;,
  0.445937;0.895065;0.000000;,
  0.265219;-0.016343;-0.964050;,
  0.406728;0.913549;0.000004;,
  0.381167;0.924506;0.000002;,
  0.456773;0.889584;0.000000;,
  0.249317;-0.968422;-0.000000;,
  0.358332;-0.933594;-0.000000;,
  0.552599;0.833447;0.000000;,
  0.196446;-0.980515;-0.000000;,
  0.319865;-0.019712;-0.947258;,
  0.389646;0.920965;0.000000;,
  0.352215;0.935919;0.000000;,
  0.330578;0.943779;0.000000;,
  -0.138446;-0.990370;0.000000;,
  -0.059894;-0.998205;0.000000;,
  0.168545;-0.025561;-0.985363;,
  0.308766;0.951138;0.000000;,
  0.421955;0.906617;0.000000;,
  0.413614;0.910452;0.000000;,
  -0.121846;-0.992549;0.000000;,
  0.405239;0.914211;0.000000;,
  0.164999;-0.037279;-0.985589;,
  -0.131251;-0.991349;0.000000;,
  -0.361831;-0.932244;0.000000;,
  -0.361831;-0.932244;0.000000;,
  -0.364521;-0.930353;0.039581;,
  -0.366637;-0.926995;0.079100;,
  0.035577;0.481869;0.875520;,
  0.146557;0.714571;-0.684039;,
  -0.942304;-0.243078;0.230164;,
  0.611481;-0.170683;0.772630;,
  -0.518395;0.393791;-0.759075;,
  -0.275774;0.959396;0.059228;,
  -0.122629;0.991107;0.051661;,
  -0.054472;-0.076708;0.995565;,
  -0.951117;-0.307975;-0.022967;,
  -0.050714;-0.072068;0.996110;,
  -0.074583;0.387020;-0.919050;;
  128;
  4;21,8,3,3;,
  4;78,9,7,74;,
  4;20,10,5,17;,
  4;77,1,1,76;,
  4;81,75,4,14;,
  4;79,93,12,12;,
  4;75,0,94,94;,
  4;95,25,24,95;,
  4;73,6,96,97;,
  4;11,2,8,21;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,11,21,3;,
  4;98,34,34,18;,
  4;16,31,32,16;,
  4;99,29,26,99;,
  4;74,79,13,100;,
  4;79,79,13,13;,
  4;79,79,12,13;,
  4;73,80,101,6;,
  4;80,81,15,101;,
  4;81,81,14,15;,
  4;9,18,17,7;,
  4;18,19,17,17;,
  4;19,20,17,17;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,21,3,3;,
  4;25,40,39,24;,
  4;20,22,22,10;,
  4;4,23,23,14;,
  4;102,103,104,105;,
  4;28,42,42,28;,
  4;106,27,107,106;,
  4;14,108,108,15;,
  4;19,28,28,20;,
  4;31,44,45,32;,
  4;15,30,30,101;,
  4;18,33,33,19;,
  4;109,110,111,109;,
  4;112,50,49,36;,
  4;113,112,36,113;,
  4;6,35,114,96;,
  4;101,115,115,6;,
  4;38,38,37,37;,
  4;22,37,37,22;,
  4;38,52,52,38;,
  4;103,116,117,104;,
  4;41,41,42,42;,
  4;27,118,118,107;,
  4;41,58,58,41;,
  4;29,119,120,26;,
  4;43,43,46,46;,
  4;31,66,66,44;,
  4;110,121,122,111;,
  4;33,46,46,33;,
  4;48,48,47,47;,
  4;35,70,70,123;,
  4;34,47,47,34;,
  4;35,123,124,114;,
  4;51,53,53,51;,
  4;117,125,125,104;,
  4;25,126,126,40;,
  4;127,51,51,127;,
  4;54,63,63,54;,
  4;125,54,54,125;,
  4;52,55,55,52;,
  4;126,128,128,126;,
  4;57,60,60,57;,
  4;120,56,56,26;,
  4;129,130,130,129;,
  4;27,57,57,118;,
  4;59,61,61,59;,
  4;130,131,131,130;,
  4;56,59,59,56;,
  4;58,132,132,58;,
  4;61,61,62,62;,
  4;132,133,133,132;,
  4;60,62,62,60;,
  4;131,134,134,131;,
  4;64,64,64,64;,
  4;55,135,135,55;,
  4;128,136,136,128;,
  4;53,137,137,53;,
  4;65,67,67,65;,
  4;138,139,139,138;,
  4;122,65,65,111;,
  4;43,140,140,43;,
  4;68,68,68,68;,
  4;140,141,141,140;,
  4;66,142,142,66;,
  4;139,143,143,139;,
  4;69,71,71,69;,
  4;49,69,69,36;,
  4;144,145,145,144;,
  4;48,146,146,48;,
  4;72,72,72,72;,
  4;145,147,147,145;,
  4;70,148,148,70;,
  4;146,149,149,146;,
  4;150,151,81,81;,
  4;152,150,81,80;,
  4;153,152,80,73;,
  4;17,17,79,79;,
  4;17,17,79,79;,
  4;7,17,79,74;,
  4;84,84,83,83;,
  4;4,75,77,102;,
  4;17,5,93,79;,
  4;151,0,75,81;,
  4;102,77,76,154;,
  4;155,78,74,100;,
  4;82,85,85,82;,
  4;156,156,84,84;,
  4;8,82,82,97;,
  4;2,157,157,8;,
  4;87,90,90,87;,
  4;157,86,86,157;,
  4;158,87,87,158;,
  4;159,160,160,159;,
  4;89,92,92,89;,
  4;160,89,89,160;,
  4;85,88,88,85;,
  4;86,161,161,86;,
  4;162,162,91,91;,
  4;88,91,91,88;,
  4;161,163,163,161;,
  4;90,164,164,90;;
 }
 MeshTextureCoords {
  130;
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
