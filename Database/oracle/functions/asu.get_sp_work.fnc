DROP FUNCTION ASU.GET_SP_WORK
/

--
-- GET_SP_WORK  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_SP_WORK
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 257014;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_SP_WORK
/

--
-- GET_SP_WORK  (Synonym) 
--
--  Dependencies: 
--   GET_SP_WORK (Function)
--
CREATE PUBLIC SYNONYM GET_SP_WORK FOR ASU.GET_SP_WORK
/


GRANT EXECUTE ON ASU.GET_SP_WORK TO PUBLIC
/

