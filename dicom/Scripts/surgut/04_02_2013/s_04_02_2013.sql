/* Generated by IB DB Comparer v.1.15.Beta.  04.02.2013 09:19:14 */
/* Server Version: WI-V6.3.4.13130 Firebird 2.0.  ODS Version: 10.1. */

SET NAMES NONE;

SET SQL DIALECT 3;

/* Drop Constraints... */
/* Drop: ALTER TABLE "APPLYTABLE" ADD PRIMARY KEY ("IDFIELD");*/
ALTER TABLE "APPLYTABLE" DROP CONSTRAINT "INTEG_33";
COMMIT WORK;

/* Create Table... */
CREATE TABLE "EVENTS_RSND"("FK_ID" INTEGER NOT NULL,
"FN_TYPE" SMALLINT,
"FC_CALLINGTITLE" VARCHAR(20) CHARACTER SET NONE,
"FC_CALLEDTITLE" VARCHAR(20) CHARACTER SET NONE,
"FC_STUDYUID" VARCHAR(80) CHARACTER SET NONE,
"FC_MODALITY" VARCHAR(4) CHARACTER SET NONE,
"FD_STUDYDATE" DATE,
"FD_DATE" DATE,
"FN_AMM" INTEGER,
"FN_AMM_ERR" INTEGER,
"FC_PATIENTID" VARCHAR(20) CHARACTER SET NONE,
"FC_PATIENTNAME" VARCHAR(250) CHARACTER SET NONE,
"FC_ENAME" VARCHAR(250) CHARACTER SET NONE,
"FC_ACCESSIONNUMBER" VARCHAR(100) CHARACTER SET NONE);
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'PK'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FK_ID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'0 - �������� ���������  1 - ������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FN_TYPE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'AETITLE ����������� �������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_CALLINGTITLE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'AETITLE ���� �� ����������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_CALLEDTITLE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'STUDYUID - UID ������������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_STUDYUID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'����������� ������������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_MODALITY';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'���� ������������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FD_STUDYDATE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'���� ���������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FD_DATE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'����� ������� � ������������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FN_AMM';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'����� ������� � �������� ��� ��������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FN_AMM_ERR';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'id ��������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_PATIENTID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'��� ��������'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_PATIENTNAME';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'��� �������� ���'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_ENAME';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'ACCESSIONNUMBER'
where Rdb$Relation_Name='EVENTS_RSND' and Rdb$Field_Name='FC_ACCESSIONNUMBER';
COMMIT WORK;
CREATE TABLE "EVENTS_RSND_ERR_LST"("FK_ID_RSND" INTEGER,
"FC_STUDYUID" VARCHAR(80) CHARACTER SET NONE,
"FC_INSTANCEUID" VARCHAR(80) CHARACTER SET NONE,
"FC_COMM" VARCHAR(250) CHARACTER SET NONE,
"FN_TRANSFERSYNTAX" INTEGER,
"FC_CALLEDTITLE" VARCHAR(20) CHARACTER SET NONE);
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'������ �� FK_id EVENTS_RSND'
where Rdb$Relation_Name='EVENTS_RSND_ERR_LST' and Rdb$Field_Name='FK_ID_RSND';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'STUDYUID
'
where Rdb$Relation_Name='EVENTS_RSND_ERR_LST' and Rdb$Field_Name='FC_STUDYUID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'INSTANCEUID'
where Rdb$Relation_Name='EVENTS_RSND_ERR_LST' and Rdb$Field_Name='FC_INSTANCEUID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'����� ������
'
where Rdb$Relation_Name='EVENTS_RSND_ERR_LST' and Rdb$Field_Name='FC_COMM';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'TRANSFERSYNTAX
.  .
������� � dcm_uid.pas � dicomVCL

PrivateTransferSyntax = 8192;
  ImplicitVRLittleEndian = 8193;
  ExplicitVRLittleEndian = 8194;
  ExplicitVRBigEndian = 8195;
  RLELossless = 8198;
  //JPEG_1 = 8196;
  JPEGBaseline = 8196;
  //JPEG_14_SelectionValue1 = 8197;
  JPEGLossless = 8197;
  JPEGExtendedProcess_2_4 = 8199;
  JPEG_3_5 = 8200;
  JPEG_6_8 = 8201;
  JPEG_7_9 = 8202;
  JPEG_10_12 = 8203;
  JPEG_11_13 = 8204;
  JPEGLossless14 = 8205;
  JPEGLossless15 = 8206;
  JPEG_16_18 = 8207;
  JPEG_17_19 = 8208;
  JPEG_20_22 = 8209;
  JPEG_21_23 = 8210;
  JPEG_24_26 = 8211;
  JPEG_25_27 = 8212;
  JPEG_28 = 8213;
  JPEG_29 = 8214;
  {$IFDEF ECLZLIBTransferSyntax}
  zlibFastestTransferSyntax = 8215;
  ppmFastestTransferSyntax = 8216;
  bzipFastestTransferSyntax = 8217;

  zlibMaxTransferSyntax = 8222;
  ppmMaxTransferSyntax = 8223;
  bzipMaxTransferSyntax = 8224;

  zlibNormalTransferSyntax = 8225;
  ppmNormalTransferSyntax = 8226;
  bzipNormalTransferSyntax = 8227;
  {$ENDIF}
  JPEGLossless80 = 8218;
  JPEGNearLossless81 = 8219;
  JPEG2000Irreversible = 8220; //.90 lossless
  JPEG2000Reversible = 8221; //.91 losy'
where Rdb$Relation_Name='EVENTS_RSND_ERR_LST' and Rdb$Field_Name='FN_TRANSFERSYNTAX';
COMMIT WORK;
ALTER TABLE "RULES" ADD "FN_COMPRESS" INTEGER;
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'transfer syntax ��� ������ ������ ��� ��������
.   .
������� � dcm_uid.pas � dicomVCL
.   .
PrivateTransferSyntax = 8192;
  ImplicitVRLittleEndian = 8193;
  ExplicitVRLittleEndian = 8194;
  ExplicitVRBigEndian = 8195;
  RLELossless = 8198;
  //JPEG_1 = 8196;
  JPEGBaseline = 8196;
  //JPEG_14_SelectionValue1 = 8197;
  JPEGLossless = 8197;
  JPEGExtendedProcess_2_4 = 8199;
  JPEG_3_5 = 8200;
  JPEG_6_8 = 8201;
  JPEG_7_9 = 8202;
  JPEG_10_12 = 8203;
  JPEG_11_13 = 8204;
  JPEGLossless14 = 8205;
  JPEGLossless15 = 8206;
  JPEG_16_18 = 8207;
  JPEG_17_19 = 8208;
  JPEG_20_22 = 8209;
  JPEG_21_23 = 8210;
  JPEG_24_26 = 8211;
  JPEG_25_27 = 8212;
  JPEG_28 = 8213;
  JPEG_29 = 8214;
  {$IFDEF ECLZLIBTransferSyntax}
  zlibFastestTransferSyntax = 8215;
  ppmFastestTransferSyntax = 8216;
  bzipFastestTransferSyntax = 8217;

  zlibMaxTransferSyntax = 8222;
  ppmMaxTransferSyntax = 8223;
  bzipMaxTransferSyntax = 8224;

  zlibNormalTransferSyntax = 8225;
  ppmNormalTransferSyntax = 8226;
  bzipNormalTransferSyntax = 8227;
  {$ENDIF}
  JPEGLossless80 = 8218;
  JPEGNearLossless81 = 8219;
  JPEG2000Irreversible = 8220; //.90 lossless
  JPEG2000Reversible = 8221; //.91 losy'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FN_COMPRESS';
COMMIT WORK;
ALTER TABLE "RULES" ADD "FN_PRC_COMPRESS" SMALLINT;
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'% ������
'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FN_PRC_COMPRESS';
COMMIT WORK;

Update Rdb$Relations set Rdb$Description =
''
where Rdb$Relation_Name='DEVICES';
Update Rdb$Relations set Rdb$Description =
'������� ������� WL-������� Created by Prihodko N. 16.05.2012'
where Rdb$Relation_Name='EVENTS_WL';
Update Rdb$Relations set Rdb$Description =
'������� ������ ���������'
where Rdb$Relation_Name='RULES';
/* Alter Table (Field)... */
Update Rdb$Relation_Fields set Rdb$Description =
'transfer syntax ��� ������ ������ ��� ��������
.   .
������� � dcm_uid.pas � dicomVCL
.   .
PrivateTransferSyntax = 8192;
  ImplicitVRLittleEndian = 8193;
  ExplicitVRLittleEndian = 8194;
  ExplicitVRBigEndian = 8195;
  RLELossless = 8198;
  //JPEG_1 = 8196;
  JPEGBaseline = 8196;
  //JPEG_14_SelectionValue1 = 8197;
  JPEGLossless = 8197;
  JPEGExtendedProcess_2_4 = 8199;
  JPEG_3_5 = 8200;
  JPEG_6_8 = 8201;
  JPEG_7_9 = 8202;
  JPEG_10_12 = 8203;
  JPEG_11_13 = 8204;
  JPEGLossless14 = 8205;
  JPEGLossless15 = 8206;
  JPEG_16_18 = 8207;
  JPEG_17_19 = 8208;
  JPEG_20_22 = 8209;
  JPEG_21_23 = 8210;
  JPEG_24_26 = 8211;
  JPEG_25_27 = 8212;
  JPEG_28 = 8213;
  JPEG_29 = 8214;
  {$IFDEF ECLZLIBTransferSyntax}
  zlibFastestTransferSyntax = 8215;
  ppmFastestTransferSyntax = 8216;
  bzipFastestTransferSyntax = 8217;

  zlibMaxTransferSyntax = 8222;
  ppmMaxTransferSyntax = 8223;
  bzipMaxTransferSyntax = 8224;

  zlibNormalTransferSyntax = 8225;
  ppmNormalTransferSyntax = 8226;
  bzipNormalTransferSyntax = 8227;
  {$ENDIF}
  JPEGLossless80 = 8218;
  JPEGNearLossless81 = 8219;
  JPEG2000Irreversible = 8220; //.90 lossless
  JPEG2000Reversible = 8221; //.91 losy'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FN_COMPRESS';
Update Rdb$Relation_Fields set Rdb$Description =
'% ������
'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FN_PRC_COMPRESS';

Update Rdb$Relation_Fields set Rdb$Description =
''
where Rdb$Relation_Name='DEVICES' and Rdb$Field_Name='FK_ID';
COMMIT WORK;
/* Alter Field (Null / Not Null)... */
UPDATE RDB$RELATION_FIELDS SET RDB$NULL_FLAG=NULL WHERE RDB$FIELD_NAME='FC_IP' AND RDB$RELATION_NAME='DEVICES';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
''
where Rdb$Relation_Name='DEVICES' and Rdb$Field_Name='FC_IP';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
''
where Rdb$Relation_Name='DEVICES' and Rdb$Field_Name='FN_PORT';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
''
where Rdb$Relation_Name='DEVICES' and Rdb$Field_Name='FC_TITLE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'��� ���������� (1-������, 2-������� �������, 3-�������)'
where Rdb$Relation_Name='DEVICES' and Rdb$Field_Name='FN_TYPE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'UID'
where Rdb$Relation_Name='EVENTS_WL' and Rdb$Field_Name='FK_ID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'�������'
where Rdb$Relation_Name='EVENTS_WL' and Rdb$Field_Name='FC_NAME';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'��� ������� (1-DicomAssociation, 2-DicomFind)'
where Rdb$Relation_Name='EVENTS_WL' and Rdb$Field_Name='FN_TYPE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'���� �������'
where Rdb$Relation_Name='EVENTS_WL' and Rdb$Field_Name='FD_DATE';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'�����������'
where Rdb$Relation_Name='EVENTS_WL' and Rdb$Field_Name='FC_REMARK';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'Accession Number (����� ���������)'
where Rdb$Relation_Name='IMAGES' and Rdb$Field_Name='ACCESSIONNUMBER';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'����� ��������=����� ����������� �����'
where Rdb$Relation_Name='PATIENTS' and Rdb$Field_Name='P_PID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'UID'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FK_ID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'DEVICES.FK_ID - ���� ���������� ������'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FK_DEVICEID';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'DEVICES.FK_ID - ������ ������ ������'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FK_DEVICEID2';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'�����������'
where Rdb$Relation_Name='RULES' and Rdb$Field_Name='FC_MOD';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'AccessionNumber (����� ���������)'
where Rdb$Relation_Name='SERIES' and Rdb$Field_Name='ACCESSIONNUMBER';
COMMIT WORK;
Update Rdb$Relation_Fields set Rdb$Description =
'Protocol Number (����� ���������)'
where Rdb$Relation_Name='STUDIES' and Rdb$Field_Name='ACCESSIONNUMBER';
COMMIT WORK;

/* Alter Table (Field position)... */
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=0
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FK_ID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=1
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FC_IP';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=2
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FN_PORT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=3
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FC_TITLE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=4
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FC_COMMENT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=5
 WHERE RDB$RELATION_NAME='DEVICES' AND RDB$FIELD_NAME='FN_TYPE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=0
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='STUDYUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=1
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SERIESUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=2
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='INSTANCEUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=3
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='IMGNO';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=4
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='IMAGETYPE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=5
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SIZEX';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=6
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SIZEY';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=7
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='PHOTOMETRIC';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=8
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='BITS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=9
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='ABITS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=10
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='BITS_PER_SAMPLE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=11
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='IMAGEDATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=12
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='STUDIESDATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=13
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SELECTEDINDEX';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=14
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SELECTEDINDEX1';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=15
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SELECTEDINDEX2';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=16
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='SELECTEDINDEX3';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=17
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='IMAGEFLAG';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=18
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='P_PID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=19
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='LAST_WINDOWS_CENTER';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=20
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='LAST_WINDOWS_WIDTH';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=21
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='LAST_UPDATE_TIME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=22
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='ACCESSIONNUMBER';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=23
 WHERE RDB$RELATION_NAME='IMAGES' AND RDB$FIELD_NAME='IMAGESIZE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=0
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='STUDYUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=1
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='SERIESUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=2
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='SERIES_IMAGETYPE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=3
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='SERIES_IMAGE_COUNT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=4
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='SERIES_DESC';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=5
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='ACCESSIONNUMBER';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=6
 WHERE RDB$RELATION_NAME='SERIES' AND RDB$FIELD_NAME='SERIES_DATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=0
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STUDYUID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=1
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_ENAME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=2
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_SEX';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=3
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_PID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=4
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STUDYID';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=5
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='PEER_IP';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=6
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='BSTATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=7
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='LDATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=8
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='BACKUPTIME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=9
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='BACKUPVAL';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=10
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STUDY_IMAGE_COUNT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=11
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STUDIES_IMAGE_TYPE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=12
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='RPHYS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=13
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='OPNAME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=14
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='PERFORMPHYS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=15
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='CALLING_AE_TITLE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=16
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STUDYDESCRIPTION';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=17
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='INSTITUTIONALDEPARTMENTNAME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=18
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='REFERRINGPHYSICIANNAME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=19
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='REPORTSTATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=20
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='PRINTSTATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=21
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_AGE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=22
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_DOB';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=23
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_DATEBORN';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=24
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='P_ENAME_RUS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=25
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='STATUS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=26
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='ACCESSIONNUMBER';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=27
 WHERE RDB$RELATION_NAME='STUDIES' AND RDB$FIELD_NAME='NAME_DISC';
COMMIT WORK;

/* Create Index... */
CREATE INDEX "EVENTS_RSND_ERR_LST_IDX1" ON "EVENTS_RSND_ERR_LST"("FK_ID_RSND","FC_STUDYUID","FC_CALLEDTITLE");
COMMIT WORK;

/* Create Generator... */
CREATE GENERATOR "GEN_EVENTS_RSND_ID";
COMMIT WORK;

/* Create Primary Key... */
ALTER TABLE "APPLYTABLE" ADD CONSTRAINT "PK_APPLYTABLE" PRIMARY KEY ("IDFIELD");
COMMIT WORK;
ALTER TABLE "EVENTS_RSND" ADD CONSTRAINT "PK_EVENTS_RSND" PRIMARY KEY ("FK_ID");
COMMIT WORK;
/* Create Trigger... */
SET TERM ^ ;
CREATE TRIGGER "EVENTS_RSND_BD0" FOR "EVENTS_RSND"
ACTIVE BEFORE DELETE POSITION 0 
AS
begin
  delete from EVENTS_RSND_ERR_LST where FK_ID_RSND=old.FK_ID;
end
^

SET TERM ; ^
COMMIT WORK;
SET TERM ^ ;
CREATE TRIGGER "EVENTS_RSND_BI0" FOR "EVENTS_RSND"
ACTIVE BEFORE INSERT POSITION 0 
AS
begin
  if (new.fk_id is null) then
  begin
    new.fk_id = gen_id(GEN_EVENTS_RSND_ID, 1);
  end
end
^

SET TERM ; ^
COMMIT WORK;

/* (c) 1998-2002 by Boris Loboda, barry@audit.kharkov.com 
-- Table: APPLYTABLE Field: NAMEFIELD [Type difference] >
 Master: VARCHAR(100)
 Target: CHAR(100)
-- Table: APPLYTABLE Field: ENAMEFIELD [Type difference] >
 Master: VARCHAR(100)
 Target: CHAR(100)
-- Table: DEVICES Field: FK_ID [Description difference] > Master: [] Target: [���������� �������������]
-- Table: DEVICES Field: FC_IP[Nullable difference] > Master: NULL Target: NOT NULL
-- Table: DEVICES Field: FC_IP [Description difference] > Master: [] Target: [IP-����� ���������� ����������]
-- Table: DEVICES Field: FN_PORT [Description difference] > Master: [] Target: [���� ����������� ���������� ����������]
-- Table: DEVICES Field: FC_TITLE [Description difference] > Master: [] Target: [Calling AE Title]
-- Table: DEVICES Field: FN_TYPE [Description difference] > Master: [��� ���������� (1-������, 2-������� �������, 3-�������)] Target: []
-- Table: EVENTS_WL Field: FK_ID [Description difference] > Master: [UID] Target: []
-- Table: EVENTS_WL Field: FC_NAME [Description difference] > Master: [�������] Target: []
-- Table: EVENTS_WL Field: FN_TYPE [Description difference] > Master: [��� ������� (1-DicomAssociation, 2-DicomFind)] Target: []
-- Table: EVENTS_WL Field: FD_DATE [Description difference] > Master: [���� �������] Target: []
-- Table: EVENTS_WL Field: FC_REMARK [Description difference] > Master: [�����������] Target: []
-- Table: IMAGES Field: ACCESSIONNUMBER [Description difference] > Master: [Accession Number (����� ���������)] Target: [Accession Number (� ��������� ������������)]
-- Table: PATIENTS Field: P_PID [Description difference] > Master: [����� ��������=����� ����������� �����] Target: [����� ��������=����� ������������(��� �������) ]
-- Table: RULES Field: FK_ID [Description difference] > Master: [UID] Target: []
-- Table: RULES Field: FK_DEVICEID [Description difference] > Master: [DEVICES.FK_ID - ���� ���������� ������] Target: []
-- Table: RULES Field: FK_DEVICEID2 [Description difference] > Master: [DEVICES.FK_ID - ������ ������ ������] Target: []
-- Table: RULES Field: FC_MOD [Description difference] > Master: [�����������] Target: []
-- Table: SERIES Field: ACCESSIONNUMBER [Description difference] > Master: [AccessionNumber (����� ���������)] Target: [Accession Number (� ��������� ������������)]
-- Table: STUDIES Field: ACCESSIONNUMBER [Description difference] > Master: [Protocol Number (����� ���������)] Target: [Accession Number (� ��������� ������������)]
-- Table: DEVICES Field: FK_ID [Position difference] > Master: 0 Target: 1
-- Table: DEVICES Field: FC_IP [Position difference] > Master: 1 Target: 0
-- Table: IMAGES Field: ACCESSIONNUMBER [Position difference] > Master: 22 Target: 23
-- Table: IMAGES Field: IMAGESIZE [Position difference] > Master: 23 Target: 22
-- Table: SERIES Field: ACCESSIONNUMBER [Position difference] > Master: 5 Target: 6
-- Table: SERIES Field: SERIES_DATE [Position difference] > Master: 6 Target: 5
-- Table: STUDIES Field: ACCESSIONNUMBER [Position difference] > Master: 26 Target: 27
-- Table: STUDIES Field: NAME_DISC [Position difference] > Master: 27 Target: 26
*/