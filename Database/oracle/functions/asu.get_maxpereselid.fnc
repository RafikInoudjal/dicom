DROP FUNCTION ASU.GET_MAXPERESELID
/

--
-- GET_MAXPERESELID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TPERESEL (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_MAXPERESELID" 
  ( pFK_ID IN NUMBER)
  RETURN  NUMBER IS
  CURSOR cTemp IS SELECT /*+first_row*/ MAX(FK_ID) FROM TPERESEL WHERE FK_PACID=pFK_ID;
  nTemp NUMBER;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO nTemp;
  CLOSE cTemp;
  RETURN nTemp;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_MAXPERESELID TO EXCHANGE
/

GRANT EXECUTE ON ASU.GET_MAXPERESELID TO EXCH43
/

