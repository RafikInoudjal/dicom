DROP FUNCTION ASU.GET_SNILS_REQ
/

--
-- GET_SNILS_REQ  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_SNILS_REQ
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_SNILS_REQ
/

--
-- GET_SNILS_REQ  (Synonym) 
--
--  Dependencies: 
--   GET_SNILS_REQ (Function)
--
CREATE PUBLIC SYNONYM GET_SNILS_REQ FOR ASU.GET_SNILS_REQ
/


GRANT EXECUTE ON ASU.GET_SNILS_REQ TO PUBLIC
/

