DROP PACKAGE ASU.VOZR_SOSTAV_OLD
/

--
-- VOZR_SOSTAV_OLD  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TSROKY (Table)
--   TVOZR (Table)
--   PKG_SMINI (Package)
--   GET_PACDAYSPLAN (Function)
--   TKARTA (Table)
--   TPRIZN (Table)
--
CREATE OR REPLACE PACKAGE ASU."VOZR_SOSTAV_OLD" 
  IS
-- Purpose: �����: ���������� ������ ���������
  TYPE TVozrL IS RECORD (n1 NUMBER,n2 NUMBER);
  TYPE TTABLE IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
  TYPE TVOZRT IS TABLE OF TVOZRL INDEX BY BINARY_INTEGER;
  CURSOR cCountAll(pFD_DATA1 DATE,pFD_DATA2 DATE) IS
         SELECT /*+FIRST_ROWS*/ COUNT(FK_PACID)
           FROM TSROKY
          WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
            AND FK_PRYB=3;
  CURSOR cShortCountAll(pFD_DATA1 DATE,pFD_DATA2 DATE) IS
         SELECT /*+FIRST_ROWS*/ COUNT(FK_PACID)
           FROM TSROKY
          WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
            AND FK_PRYB=3
            AND GET_PACDAYSPLAN(FK_PACID)<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5');
  CURSOR cPrizn IS SELECT FK_ID FROM TPRIZN ORDER BY FK_ID DESC;
  CURSOR cPriznName IS SELECT FC_SHORT FROM TPRIZN ORDER BY FK_ID DESC;
  CURSOR cVozrL IS SELECT FN_1,FN_2 FROM TVOZR ORDER BY FN_1;
  CURSOR cVozrName IS SELECT FC_NAME FROM TVOZR ORDER BY FN_1;
  CURSOR cTotal(pFD_DATA1 DATE,pFD_DATA2 DATE,n1 NUMBER,n2 NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID,FD_DATA1
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND trunc(MONTHS_BETWEEN(FD_DATA1, FD_ROJD)/12) BETWEEN n1 and n2;
  CURSOR cShortTotal(pFD_DATA1 DATE,pFD_DATA2 DATE,n1 NUMBER,n2 NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID,FD_DATA1,GET_PACDAYSPLAN(FK_PACID) FN_DAYS
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND trunc(MONTHS_BETWEEN(FD_DATA1, FD_ROJD)/12) BETWEEN n1 and n2
            AND FN_DAYS<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5');
  CURSOR cKont(pFD_DATA1 DATE,pFD_DATA2 DATE,n1 NUMBER,n2 NUMBER,nPrizn NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID,FD_DATA1
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND trunc(MONTHS_BETWEEN(FD_DATA1, FD_ROJD)/12) BETWEEN n1 and n2
            AND TKARTA.FK_PRIZN=nPrizn;
  CURSOR cShortKont(pFD_DATA1 DATE,pFD_DATA2 DATE,n1 NUMBER,n2 NUMBER,nPrizn NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID,FD_DATA1,GET_PACDAYSPLAN(FK_PACID) FN_DAYS
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND trunc(MONTHS_BETWEEN(FD_DATA1, FD_ROJD)/12) BETWEEN n1 and n2
            AND FN_DAYS<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5')
            AND TKARTA.FK_PRIZN=nPrizn;
  CURSOR cKontAll(pFD_DATA1 DATE,pFD_DATA2 DATE,nPrizn NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND TKARTA.FK_PRIZN=nPrizn;
  CURSOR cShortKontAll(pFD_DATA1 DATE,pFD_DATA2 DATE,nPrizn NUMBER) IS
         SELECT COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID,GET_PACDAYSPLAN(FK_PACID) FN_DAYS
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND FN_DAYS<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5')
            AND TKARTA.FK_PRIZN=nPrizn;
  CURSOR cCountSex(pFD_DATA1 DATE,pFD_DATA2 DATE,nSex NUMBER) IS
         SELECT /*+FIRST_ROWS*/ COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND FP_SEX=nSex;
  CURSOR cCountSexKont(pFD_DATA1 DATE,pFD_DATA2 DATE,nSex NUMBER,nPrizn NUMBER) IS
         SELECT /*+FIRST_ROWS*/ COUNT(FK_ID)
           FROM TKARTA,(SELECT FK_PACID
                          FROM TSROKY
                         WHERE FD_DATA1 BETWEEN pFD_DATA1 and pFD_DATA2+1-1/(24*60)
                           AND FK_PRYB=3)
          WHERE FK_ID=FK_PACID
            AND FP_SEX=nSex
            AND FK_PRIZN=nPrizn;
  FUNCTION GET_TEMPTABLENAME(strBegin IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION DO_CALC_REPORT(pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_VRACHID IN NUMBER) RETURN NUMBER;
END;
/

SHOW ERRORS;


