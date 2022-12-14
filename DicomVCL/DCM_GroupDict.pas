{*******************************************************}
{							                                          }
{       Delphi DicomVCL Component Library	            	}
{       DicomVCL include file				                    }
{                                                       }
{       Copyright (c) 1999,2008 by Jiawen Feng	      	}
{                                                       }
{*******************************************************}
unit DCM_GroupDict;
{$I DicomPack.inc}
interface

uses classes, sysutils;

implementation

{File Meta Infrmation
  ($0002,$0001)
  ($0002,$0002)
  ($0002,$0003)
  ($0002,$0010)
  ($0002,$0012)
  ($0002,$0013) 
  ($0002,$0016)
  ($0002,$0100)
  ($0002,$0102)
CT
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  Frame of Reference
    ($0020,$0052)
    ($0020,$1040)

  General Series
    ($0080,$0060)
    ($0080,$0021)
    ($0080,$0031)
    ($0080,$103E)
    ($0080,$1050)
    ($0080,$1070)
    ($0080,$1111)
    ($0018,$0015)
    ($0018,$1030)
    ($0018,$5100)
    ($0020,$000E)
    ($0020,$0011)
    ($0020,$0060)
    ($0028,$0108)
    ($0028,$0109)
    ($0040,$0244)
    ($0040,$0245)
    ($0040,$0254)
    ($0040,$0260)
    ($0040,$0275)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  General lmage
    ($0008,$0008)
    ($0008,$0022)
    ($0008,$0023)
    ($0008,$0032)
    ($0008,$0033)
    ($0008,$1140)
    ($0008,$2111)
    ($0008,$2112)
    ($0020,$0012)
    ($0020,$0013)
    ($0020,$0020)
    ($0020,$1002)
    ($0020,$4000)
    ($0028,$0300)
    ($0028,$0301)
    ($0028,$2110)
    ($0028,$2112)
    ($0088,$0200)
  Image Plane
    ($0018,$0050)
    ($0020,$0032)
    ($0020,$0037)
    ($0020,$1041)
    ($0028,$0030)
  Image Pixel
    ($0028,$0002)
    ($0028,$0004)
    ($0028,$0006)
    ($0028,$0010)
    ($0028,$0011)
    ($0028,$0034)
    ($0028,$0100)
    ($0028,$0102)
    ($0028,$0101)
    ($0028,$0103)
    ($0028,$0106)
    ($0028,$0107)
    ($0028,$1101)
    ($0028,$1102)
    ($0028,$1103)
    ($0028,$1201)
    ($0028,$1202)
    ($0028,$1203)
    ($7FE0,$0010)
  Contrast/Bolus
    ($0018,$0010)
    ($0018,$0012)
    ($0018,$0014)
    ($0018,$1040)
    ($0018,$1041)
    ($0018,$1042)
    ($0018,$1043)
    ($0018,$1044)
  CT Image
    ($0018,$0022)
    ($0018,$0060)
    ($0018,$0090)
    ($0018,$1100)
    ($0018,$1110)
    ($0018,$1111)
    ($0018,$1120)
    ($0018,$1130)
    ($0018,$1140)
    ($0018,$1150)
    ($0018,$1151)
    ($0018,$1152)
    ($0018,$)1160
    ($0018,$1170)
    ($0018,$1190)
    ($0018,$1210)
    ($0020,$0012)
    ($0028,$1052)
    ($0028,$1053)
  Overlay Plane  
    ($6000,$0010)
    ($6000,$0011)
    ($6000,$0022)
    ($6000,$0040)
    ($6000,$0045)
    ($6000,$0050)
    ($6000,$0100)
    ($6000,$0102)
    ($6000,$1301)
    ($6000,$1302)
    ($6000,$1303)
    ($6000,$1500)
    ($6000,$3000)
  VOILUT  
    ($0028,$1050)
    ($0028,$1051)
    ($0028,$1055)
    ($0028,$3010)
  SOP Common
    ($0080,$0005)
    ($0080,$0012)
    ($0080,$0013)
    ($0080,$0014)
    ($0080,$0016)
    ($0080,$0018)
    ($0020,$0013)
MR
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  Frame of Reference
    ($0020,$0052)
    ($0020,$1040)
  General Series
    ($0080,$0060)
    ($0080,$0021)
    ($0080,$0031)
    ($0080,$103E)
    ($0080,$1050)
    ($0080,$1070)
    ($0080,$1111)
    ($0018,$0015)
    ($0018,$1030)
    ($0018,$5100)
    ($0020,$000E)
    ($0020,$0011)
    ($0020,$0060)
    ($0028,$0108)
    ($0028,$0109)
    ($0040,$0244)
    ($0040,$0245)
    ($0040,$0254)
    ($0040,$0260)
    ($0040,$0075)
  General Equipment 
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  General Image
    ($0008,$0008)
    ($0008,$0022)
    ($0008,$0023)
    ($0008,$0032)
    ($0008,$0033)
    ($0008,$1140)
    ($0008,$2111)
    ($0008,$2112)
    ($0020,$0012)
    ($0020,$0013)
    ($0020,$0020)
    ($0020,$1002)
    ($0020,$4000)
    ($0028,$0300)
    ($0028,$0301)
    ($0028,$2110)
    ($0028,$2112)
    ($0088,$0200)
  Image Plane
    ($0018,$0050)
    ($0020,$0032)
    ($0020,$0037)
    ($0020,$1041)
    ($0028,$0030)
  Image Pixel
    ($0028,$0002)
    ($0028,$0004)
    ($0028,$0006)
    ($0028,$0010)
    ($0028,$0011)
    ($0028,$0034)
    ($0028,$0100)
    ($0028,$0102)
    ($0028,$0101)
    ($0028,$0103)
    ($0028,$0106)
    ($0028,$0107)
    ($0028,$1101)
    ($0028,$1102)
    ($0028,$1103)
    ($0028,$1201)
    ($0028,$1202)
    ($0028,$1203)
    ($7FE0,$0010)
  Contrast/Bolus
    ($0018,$0010)
    ($0018,$0012)
    ($0018,$0014)
    ($0018,$1040)
    ($0018,$1041)
    ($0018,$1042)
    ($0018,$1043)
    ($0018,$1044)
  MR Image
    ($0018,$0020)
    ($0018,$0021)
    ($0018,$0022)
    ($0018,$0023)
    ($0018,$0024)
    ($0018,$0025)
    ($0018,$0080)
    ($0018,$0081)
    ($0018,$0083)
    ($0018,$0084)
    ($0018,$0085)
    ($0018,$0086)
    ($0018,$0087)
    ($0018,$0088)
    ($0018,$0089)
    ($0018,$0091)
    ($0018,$0092)
    ($0018,$0093)
    ($0018,$0094)
    ($0018,$0095)
    ($0018,$1060)
    ($0018,$1062)
    ($0018,$1080)
    ($0018,$1081)
    ($0018,$1082)
    ($0018,$1083)
    ($0018,$1084)
    ($0018,$1085)
    ($0018,$1086)
    ($0018,$1088)
    ($0018,$1090)
    ($0018,$1094)
    ($0018,$1100)
    ($0018,$1250)
    ($0018,$1251)
    ($0018,$1310)
    ($0018,$1312)
    ($0018,$1314)
    ($0018,$1315)
    ($0018,$1316)
    ($0018,$1318)
    ($0020,$0100)
    ($0020,$0105)
    ($0020,$0110)
  Overlay Plane
    ($6000,$0010)
    ($6000,$0011)
    ($6000,$0022)
    ($6000,$0040)
    ($6000,$0045)
    ($6000,$0050)
    ($6000,$0100)
    ($6000,$0102)
    ($6000,$1301)
    ($6000,$1302)
    ($6000,$1303)
    ($6000,$1500)
    ($6000,$3000)
  VOILUT
    ($0028,$1050)
    ($0028,$1051)
    ($0028,$1055)
    ($0028,$3010)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
NM
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  Frame of Reference
    ($0020,$0052)
    ($0020,$1040)
  General Series
    ($0008,$0060)
    ($0008,$0021)
    ($0008,$0031)
    ($0008,$103E)
    ($0008,$1050)
    ($0008,$1070)
    ($0008,$1111)
    ($0018,$0015)
    ($0018,$1030)
    ($0018,$5100)
    ($0020,$000E)
    ($0020,$0011)
    ($0020,$0060)
    ($0028,$0108)
    ($0028,$0109)
    ($0040,$0244)
    ($0040,$0245)
    ($0040,$0254)
    ($0040,$0260)
    ($0040,$0275)
  NM/PET Patient Orientation
    ($0054,$0410)
    ($0054,$0414)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  General Image
    ($0008,$0008)
    ($0008,$0022)
    ($0008,$0023)
    ($0008,$0032)
    ($0008,$0033)
    ($0008,$1140)
    ($0008,$2111)
    ($0008,$2112)
    ($0020,$)0012
    ($0020,$0013)
    ($0020,$0020)
    ($0020,$1002)
    ($0020,$4000)
    ($0028,$0300)
    ($0028,$0301)
    ($0028,$2110)
    ($0028,$2112)
    ($0088,$0200)
  Image Pixel
    ($0028,$0002)
    ($0028,$0004)
    ($0028,$0006)
    ($0028,$0010)
    ($0028,$0011)
    ($0028,$0034)
    ($0028,$0100)
    ($0028,$0102)
    ($0028,$0101)
    ($0028,$0103)
    ($0028,$0106)
    ($0028,$0107)
    ($0028,$1101)
    ($0028,$1102)
    ($0028,$1103)
    ($0028,$1201)
    ($0028,$1202)
    ($0028,$1203)
    ($7FE0,$0010)
  NM Image Pixel
    ($0028,$0002)
    ($0028,$0004)
    ($0028,$0030)
    ($0028,$0100)
    ($0028,$0101)
    ($0028,$0102)
  Multi-frame
    ($0028,$0008)
    ($0028,$0009)
  NM Multi-frame
    ($0028,$0009)
    ($0054,$0010)
    ($0054,$0011)
    ($0054,$0020)
    ($0054,$0021)
    ($0054,$0030)
    ($0054,$0031)
    ($0054,$0050)
    ($0054,$0051)
    ($0054,$0060)
    ($0054,$0061)
    ($0054,$0070)
    ($0054,$0071)
    ($0054,$0080)
    ($0054,$0081)
    ($0054,$0090)
    ($0054,$0100)
  NM Image
    ($0008,$0008)
    ($0008,$1130)
    ($0008,$1145)
    ($0008,$2218)
    ($0008,$2228)
    ($0018,$0070)
    ($0018,$0071)
    ($0018,$1061)
    ($0018,$1130)
    ($0018,$1131)
    ($0018,$1242)
    ($0018,$1243)
    ($0018,$1300)
    ($0018,$1301)
    ($0018,$1302)
    ($0018,$5020)
    ($0028,$0051)
    ($0028,$2110)
    ($0054,$0400)
  NM Isotope
    ($0018,$0026)
    ($0054,$0012)
    ($0054,$0016)
  NM Detector
    ($0054,$0022)
  NM TOMO Acquisition
    ($0054,$0052)
    ($0054,$0202)
NM multi-Gated Acquisition
    ($0018,$1080)
    ($0018,$1085)
    ($0018,$1086)
    ($0018,$1088)
    ($0054,$0062)
  NM Phase
    ($0054,$0032)
  NM Reconstruction
    ($0018,$0050)
    ($0018,$0088)
    ($0018,$1100)
    ($0018,$1210)
    ($0020,$1041)
  Overlay plane
    ($6000,$0010)
    ($6000,$0011)
    ($6000,$0022)
    ($6000,$0040)
    ($6000,$0045)
    ($6000,$0050)
    ($6000,$0100)
    ($6000,$0102)
    ($6000,$1301)
    ($6000,$1302)
    ($6000,$1303)
    ($6000,$1500)
    ($6000,$3000)
  Multi-frame Overlay
    ($6000,$0015)
    ($6000,$0051)
  Curve
    ($5000,$0005)
    ($5000,$0010)
    ($5000,$0020)
    ($5000,$0022)
    ($5000,$0030)
    ($5000,$0040)
    ($5000,$0103)
    ($5000,$0104)
    ($5000,$0105)
    ($5000,$0106)
    ($5000,$0110)
    ($5000,$0112)
    ($5000,$0114)
    ($5000,$2500)
    ($5000,$2600)
    ($5000,$3000)
  VOILUT
    ($0028,$1050)
    ($0028,$1051)
    ($0028,$1055)
    ($0028,$3010)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Basic Study Descriptor
  Patient Summary 
    ($0010,$0010)
    ($0010,$0020)
  Study Content
    ($0008,$1115)
    ($0020,$000D)
    ($0020,$0010)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Modality Worklist Item
  Specific Character Set 
    ($0008,$)0005
  Patient Relationship
    ($0008,$1110)
    ($0008,$1125)
    ($0038,$0004)
  Patient Identificafion
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0021)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$1005)
    ($0010,$1060)
    ($0010,$1090)
  Patient Demographic
    ($0010,$1010)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$0050)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$1040)
    ($0010,$1080)
    ($0010,$1081)
    ($0010,$2150)
    ($0010,$2152)
    ($0010,$2154)
    ($0010,$2160)
    ($0010,$2180)
    ($0010,$21F0)
    ($0010,$4000)
    ($0040,$3001)
  Patient Medical
    ($0010,$2000)
    ($0010,$2110)
    ($0010,$21A0)
    ($0010,$21B0)
    ($0010,$21C0)
    ($0010,$21D0)
    ($0038,$0050)
    ($0038,$0500)
  Visit Relationship
    ($0008,$1110)
    ($0008,$1120)
  Visit Identificafion
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$0082)
    ($0038,$0010)
    ($0038,$0011)
  Visit Status
    ($0038,$0008)
    ($0038,$0300)
    ($0038,$0400)
    ($0038,$4000)
  Visit Admission
    ($0008,$0090)
    ($0008,$0092)
    ($0008,$0094)
    ($0008,$1080)
    ($0008,$1084)
    ($0038,$0016)
    ($0038,$0020)
    ($0038,$0021)
  Scheduled Procedure Step
    ($0040,$0100)
  Requested Procedure
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$000D)
    ($0032,$000A)
    ($0032,$1060)
    ($0032,$1064)
    ($0040,$1001)
    ($0040,$1002)
    ($0040,$1003)
    ($0040,$1004)
    ($0040,$1005)
    ($0040,$1008)
    ($0040,$1009)
    ($0040,$1010)
    ($0040,$1400)
  Imaging Service Request
    ($0008,$0050)
    ($0008,$0090)
    ($0032,$1032)
    ($0032,$1033)
    ($0040,$2001)
    ($0040,$2004)
    ($0040,$2005)
    ($0040,$2008)
    ($0040,$2009)
    ($0040,$2010)
    ($0040,$2016)
    ($0040,$2017)
    ($0040,$2400)
Modality PPS
  PPS Relationship
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0040)
    ($0040,$0270)
  PPS Information
    ($0008,$1032)
    ($0040,$0241)
    ($0040,$0242)
    ($0040,$0243)
    ($0040,$0244)
    ($0040,$0245)
    ($0040,$0250)
    ($0040,$0251)
    ($0040,$0252)
    ($0040,$0253)
    ($0040,$0254)
    ($0040,$0255)
    ($0040,$0280)
  Image Acquisition Results
    ($0008,$0060)
    ($0020,$0010)
    ($0040,$0260)
    ($0040,$0340)
  Radiation Dose
    ($0008,$2229)
    ($0018,$1110)
    ($0018,$115E)
    ($0040,$0300)
    ($0040,$0301)
    ($0040,$0302)
    ($0040,$0303)
    ($0040,$0306)
    ($0040,$0310)
  Billing and Material
    ($0040,$0320)
    ($0040,$0321)
    ($0040,$0324)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Presentation State
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  General Series
    ($0008,$0060)
    ($0008,$0021)
    ($0008,$0031)
    ($0008,$103E)
    ($0008,$1050)
    ($0008,$1070)
    ($0008,$1111)
    ($0018,$0015)
    ($0018,$1030)
    ($0018,$5100)
    ($0020,$000E)
    ($0020,$0011)
    ($0020,$0060)
    ($0028,$0108)
    ($0028,$0109)
    ($0040,$0244)
    ($0040,$0245)
    ($0040,$0254)
    ($0040,$)0260
    ($0040,$0275)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  Mask
    ($0028,$1090)
    ($0028,$6100)
  Display Shutter
    ($0018,$1600)
    ($0018,$1602)
    ($0018,$1604)
    ($0018,$1606)
    ($0018,$1608)
    ($0018,$1610)
    ($0018,$1612)
    ($0018,$1620)
    ($0018,$1622)
  Bitmap Display Shutter
    ($0018,$1600)
    ($0018,$1622)
    ($0018,$1623)
  Overlay Plane
    ($6000,$0010)
    ($6000,$0011)
    ($6000,$0022)
    ($6000,$0040)
    ($6000,$0045)
    ($6000,$0050)
    ($6000,$0100)
    ($6000,$0102)
    ($6000,$1301)
    ($6000,$1302)
    ($6000,$)1303
    ($6000,$1500)
    ($6000,$3000)
  Displayed Area
    ($0070,$005A)
   Overlay/Curve Activation
    ($5000,$1001)
    ($6000,$1001)
  Graphic Annotation
    ($0070,$0001)
  Spatial Transfomation
    ($0070,$0041)
    ($0070,$0042)
  Graphic Layer
    ($0070,$0060)
  Modality LUT
    ($0028,$1052)
    ($0028,$1053)
    ($0028,$1054)
    ($0028,$3000)
  Softcopy VOILUT
    ($0028,$3110)
  Softcopy Presentation LUT
    ($2050,$0010)
    ($2050,$0020)
  Presntation State
    ($0008,$1115)
    ($0018,$1622)
    ($0020,$0013)
    ($0028,$1090)
    ($0028,$6100)
    ($0070,$0080)
    ($0070,$0081)
    ($0070,$0082)
    ($0070,$0083)
    ($0070,$0084)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Basic Text SR
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  Specimmen Identification
    ($0040,$050A)
    ($0040,$0550)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  SP Document Series
    ($0008,$0060)
    ($0008,$1111)
    ($0020,$000E)
    ($0020,$0011)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  SR Document General
    ($0008,$0023)
    ($0008,$0033)
    ($0020,$0013)
    ($0040,$A073)
    ($0040,$A360)
    ($0040,$A370)
    ($0040,$A372)
    ($0040,$A375)
    ($0040,$A385)
    ($0040,$A491)
    ($0040,$A492)
    ($0040,$A493)
    ($0040,$A525)
  SR Document Content
    ($0040,$A032)
    ($0040,$A040)
    ($0040,$A043)
    ($0040,$A050)
    ($0040,$A504)
    ($0040,$A730)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Enhanced SR
  Patient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  Specimen Identification
    ($0040,$050A)
    ($0040,$0550)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  SR Document Series
    ($0008,$0060)
    ($0008,$1111)
    ($0020,$000E)
    ($0020,$0011)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  SR Document General
    ($0008,$0023)
    ($0008,$0033)
    ($0020,$0013)
    ($0040,$A073)
    ($0040,$A360)
    ($0040,$A370)
    ($0040,$A372)
    ($0040,$A375)
    ($0040,$A385)
    ($0040,$A491)
    ($0040,$A492)
    ($0040,$A493)
    ($0040,$A525)
  SR Document Content
    ($0040,$A032)
    ($0040,$A040)
    ($0040,$A043)
    ($0040,$A050)
    ($0040,$A504)
    ($0040,$A730)
  SOP Commmon
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
Comprehensive SR
  Pafient
    ($0008,$1120)
    ($0010,$0010)
    ($0010,$0020)
    ($0010,$0030)
    ($0010,$0032)
    ($0010,$0040)
    ($0010,$1000)
    ($0010,$1001)
    ($0010,$2160)
    ($0010,$4000)
  Specimen Identification
    ($0040,$050A)
    ($0040,$0550)
  General Study
    ($0008,$0020)
    ($0008,$0030)
    ($0008,$0050)
    ($0008,$0090)
    ($0008,$1030)
    ($0008,$1032)
    ($0008,$1048)
    ($0008,$1060)
    ($0008,$1110)
    ($0020,$000D)
    ($0020,$0010)
  
  Patient Study
    ($0008,$1080)
    ($0010,$1010)
    ($0010,$1020)
    ($0010,$1030)
    ($0010,$2180)
    ($0010,$21B0)
  SR Document Series
    ($0008,$0060)
    ($0008,$1111)
    ($0020,$000E)
    ($0020,$0011)
  General Equipment
    ($0008,$0070)
    ($0008,$0080)
    ($0008,$0081)
    ($0008,$1010)
    ($0008,$1040)
    ($0008,$1090)
    ($0018,$1000)
    ($0018,$1020)
    ($0018,$1050)
    ($0018,$1200)
    ($0018,$1201)
    ($0028,$0120)
  SR Document General
    ($0008,$0023)
    ($0008,$0033)
    ($0020,$0013)
    ($0040,$A073)
    ($0040,$A360)
    ($0040,$A370)
    ($0040,$A372)
    ($0040,$A375)
    ($0040,$A385)
    ($0040,$A491)
    ($0040,$A492)
    ($0040,$A493)
    ($0040,$A525)
  SR Document Content
    ($0040,$A032)
    ($0040,$A040)
    ($0040,$A043)
    ($0040,$A050)
    ($0040,$A504)
    ($0040,$A730)
  SOP Common
    ($0008,$0005)
    ($0008,$0012)
    ($0008,$0013)
    ($0008,$0014)
    ($0008,$0016)
    ($0008,$0018)
    ($0020,$0013)
}
end.
 