DROP FUNCTION ASU.ANALRESMHTML_USE_RESULT
/

--
-- ANALRESMHTML_USE_RESULT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.ANALRESMHTML_USE_RESULT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM ANALRESMHTML_USE_RESULT
/

--
-- ANALRESMHTML_USE_RESULT  (Synonym) 
--
--  Dependencies: 
--   ANALRESMHTML_USE_RESULT (Function)
--
CREATE PUBLIC SYNONYM ANALRESMHTML_USE_RESULT FOR ASU.ANALRESMHTML_USE_RESULT
/


GRANT EXECUTE ON ASU.ANALRESMHTML_USE_RESULT TO PUBLIC
/

