DROP FUNCTION ASU.GET_NAPR_DIAG
/

--
-- GET_NAPR_DIAG  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_NAPR_DIAG
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 261298;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_NAPR_DIAG
/

--
-- GET_NAPR_DIAG  (Synonym) 
--
--  Dependencies: 
--   GET_NAPR_DIAG (Function)
--
CREATE PUBLIC SYNONYM GET_NAPR_DIAG FOR ASU.GET_NAPR_DIAG
/


GRANT EXECUTE ON ASU.GET_NAPR_DIAG TO PUBLIC
/

