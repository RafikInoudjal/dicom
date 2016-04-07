DROP PROCEDURE ASU.DO_WRITE_SROK
/

--
-- DO_WRITE_SROK  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSROKY (Table)
--   DO_ARRANGE_SROKY (Procedure)
--
CREATE OR REPLACE PROCEDURE ASU."DO_WRITE_SROK" -- Modified by TimurLan
   ( pFK_ID IN OUT NUMBER,
   pFK_PACID IN NUMBER,
   pFD_DATA1 IN DATE,
   pFD_DATA2 IN DATE,
   pFD_DATA3 IN DATE,
   pFN_KOL IN NUMBER,
   pFK_PRYB IN NUMBER,
   pFK_VYB IN NUMBER,
   pFK_OPLID IN NUMBER,
   pFN_SUM IN NUMBER,
   pFK_VYBID IN NUMBER)
IS
 CURSOR cTemp IS SELECT /*+first_row*/COUNT(FK_ID) FROM TSROKY WHERE FK_ID=pFK_ID;
 nTemp NUMBER;
 nTemp1 NUMBER;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO nTemp;
  CLOSE cTemp;
  if nTemp=0 then
    INSERT INTO TSROKY(FK_ID,FK_PACID,/*FK_VYBID,*/FD_DATA1,FD_DATA2,FD_DATA3,FN_KOL,FK_PRYB,FK_VYB,FK_OPLID,FN_SUM)
      VALUES(pFK_ID,pFK_PACID,/*pFK_VYBID,*/pFD_DATA1,pFD_DATA2,pFD_DATA3,pFN_KOL,pFK_PRYB,pFK_VYB,pFK_OPLID,pFN_SUM) RETURNING FK_ID INTO nTemp1;
  else
    UPDATE TSROKY SET
      FD_DATA1=pFD_DATA1,
      FD_DATA2=pFD_DATA2,
      FD_DATA3=pFD_DATA3,
      FN_KOL=pFN_KOL,
      FK_PRYB=pFK_PRYB,
      FK_VYB=pFK_VYB,
      FK_OPLID=pFK_OPLID,
      FN_SUM=pFN_SUM/*,
      FK_VYBID=pFK_VYBID*/
    WHERE FK_ID=pFK_ID;
    nTemp1:=pFK_ID;
  end if;
  if pFK_VYBID <> -1 then--���� ����������
    UPDATE TSROKY SET
      FK_VYBID = pFK_VYBID
    WHERE FK_ID=nTemp1;
  end if;
  if pFK_PRYB>2 then
    UPDATE TSROKY SET
      FD_DATA3=pFD_DATA1,
      FK_VYB=pFK_PRYB/*,
      FK_VYBID=pFK_VYBID*/
    where FK_ID=(SELECT MAX(FK_ID) FROM TSROKY WHERE FK_ID<(SELECT MAX(FK_ID) FROM TSROKY WHERE FK_PACID=pFK_PACID) AND FK_PACID=pFK_PACID);
  end if;
 DO_ARRANGE_SROKY(pFK_PACID);
 pFK_ID:=nTemp1;--BUH
END; -- Procedure
/

SHOW ERRORS;


