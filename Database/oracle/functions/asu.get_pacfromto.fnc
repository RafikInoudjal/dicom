DROP FUNCTION ASU.GET_PACFROMTO
/

--
-- GET_PACFROMTO  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSROKY (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PACFROMTO" -- Modified by TimurLan
  ( pFK_ID IN NUMBER)
  RETURN  VARCHAR2 IS
  CURSOR cData1(pID NUMBER) IS SELECT FD_DATA1 FROM TSROKY WHERE FK_PACID=pID AND FK_PRYB=2;
  CURSOR cData2(pID NUMBER) IS SELECT FD_DATA3 FROM TSROKY WHERE FK_ID=(SELECT MAX(FK_ID) FROM TSROKY WHERE FK_PACID=pID AND FK_PRYB IN (2,4,5,6));
  dData1 DATE;
  dData2 DATE;
BEGIN
  OPEN cData1(pFK_ID);
  FETCH cData1 INTO dData1;
  CLOSE cData1;
  OPEN cData2(pFK_ID);
  FETCH cData2 INTO dData2;
  CLOSE cData2;
  RETURN '� '||TO_CHAR(dData1,'dd.mm.yyyy hh24:mi')||' �� '||TO_CHAR(dData2,'dd.mm.yyyy hh24:mi');
END;
/

SHOW ERRORS;


