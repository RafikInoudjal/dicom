DROP FUNCTION ASU.NEW_FORMAT_POLIS_IMPORT
/

--
-- NEW_FORMAT_POLIS_IMPORT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.NEW_FORMAT_POLIS_IMPORT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM NEW_FORMAT_POLIS_IMPORT
/

--
-- NEW_FORMAT_POLIS_IMPORT  (Synonym) 
--
--  Dependencies: 
--   NEW_FORMAT_POLIS_IMPORT (Function)
--
CREATE PUBLIC SYNONYM NEW_FORMAT_POLIS_IMPORT FOR ASU.NEW_FORMAT_POLIS_IMPORT
/


GRANT EXECUTE ON ASU.NEW_FORMAT_POLIS_IMPORT TO PUBLIC
/

