DROP FUNCTION ASU.GET_HOMS_COMPANYID
/

--
-- GET_HOMS_COMPANYID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_HOMS_COMPANYID
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 21;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_HOMS_COMPANYID
/

--
-- GET_HOMS_COMPANYID  (Synonym) 
--
--  Dependencies: 
--   GET_HOMS_COMPANYID (Function)
--
CREATE PUBLIC SYNONYM GET_HOMS_COMPANYID FOR ASU.GET_HOMS_COMPANYID
/


GRANT EXECUTE ON ASU.GET_HOMS_COMPANYID TO PUBLIC
/

