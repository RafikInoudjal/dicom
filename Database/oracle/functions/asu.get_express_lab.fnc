DROP FUNCTION ASU.GET_EXPRESS_LAB
/

--
-- GET_EXPRESS_LAB  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_EXPRESS_LAB
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_EXPRESS_LAB
/

--
-- GET_EXPRESS_LAB  (Synonym) 
--
--  Dependencies: 
--   GET_EXPRESS_LAB (Function)
--
CREATE PUBLIC SYNONYM GET_EXPRESS_LAB FOR ASU.GET_EXPRESS_LAB
/


GRANT EXECUTE ON ASU.GET_EXPRESS_LAB TO PUBLIC
/

