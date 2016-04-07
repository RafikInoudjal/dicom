DROP FUNCTION ASU.GET_PAC_IN_DATE
/

--
-- GET_PAC_IN_DATE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSROKY (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_IN_DATE" 
  ( pFK_ID NUMBER)
  RETURN  DATE IS
CURSOR cTemp IS SELECT /*+rule*/ FD_DATA1 FROM TSROKY,(SELECT MAX(FK_ID) FK_MAXID FROM TSROKY WHERE FK_PACID=pFK_ID) WHERE FK_PRYB in (1,3) AND FK_ID=FK_MAXID;
dTemp DATE;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO dTemp;
  CLOSE cTemp;
  RETURN dTemp;
END;
/

SHOW ERRORS;


