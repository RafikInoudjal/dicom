DROP FUNCTION ASU.GET_TYPESROK
/

--
-- GET_TYPESROK  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TTYPESROK (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_TYPESROK" 
  ( pFK_ID IN  NUMBER)
  RETURN  VARCHAR2 IS
CURSOR cTemp IS SELECT /*+first_row*/FC_NAME FROM TTYPESROK WHERE FK_ID=pFK_ID;
strTemp VARCHAR2(30);
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO strTemp;
  CLOSE cTemp;
  RETURN strTemp;
END;
/

SHOW ERRORS;


