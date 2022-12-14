DROP FUNCTION ASU.GET_PAC_MINPALATAID
/

--
-- GET_PAC_MINPALATAID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TPERESEL (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_MINPALATAID" 
  ( pFK_ID IN NUMBER)
  RETURN  NUMBER IS
  dTemp NUMBER;
  CURSOR cTemp IS SELECT /*+ rule*/FK_PALATAID FROM TPERESEL,(SELECT MIN(FK_ID) FK_MAXID FROM TPERESEL WHERE FK_PACID=pFK_ID) WHERE FK_ID=FK_MAXID;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO dTemp;
  CLOSE cTemp;
  RETURN dTemp;
END;
/

SHOW ERRORS;


