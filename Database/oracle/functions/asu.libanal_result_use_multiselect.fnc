DROP FUNCTION ASU.LIBANAL_RESULT_USE_MULTISELECT
/

--
-- LIBANAL_RESULT_USE_MULTISELECT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.LIBANAL_RESULT_USE_MULTISELECT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM LIBANAL_RESULT_USE_MULTISELECT
/

--
-- LIBANAL_RESULT_USE_MULTISELECT  (Synonym) 
--
--  Dependencies: 
--   LIBANAL_RESULT_USE_MULTISELECT (Function)
--
CREATE PUBLIC SYNONYM LIBANAL_RESULT_USE_MULTISELECT FOR ASU.LIBANAL_RESULT_USE_MULTISELECT
/


GRANT EXECUTE ON ASU.LIBANAL_RESULT_USE_MULTISELECT TO PUBLIC
/

