DROP FUNCTION ASU.ANALRESTHTML_USE_COL_PRIMECH
/

--
-- ANALRESTHTML_USE_COL_PRIMECH  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.ANALRESTHTML_USE_COL_PRIMECH
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM ANALRESTHTML_USE_COL_PRIMECH
/

--
-- ANALRESTHTML_USE_COL_PRIMECH  (Synonym) 
--
--  Dependencies: 
--   ANALRESTHTML_USE_COL_PRIMECH (Function)
--
CREATE PUBLIC SYNONYM ANALRESTHTML_USE_COL_PRIMECH FOR ASU.ANALRESTHTML_USE_COL_PRIMECH
/


GRANT EXECUTE ON ASU.ANALRESTHTML_USE_COL_PRIMECH TO PUBLIC
/

