DROP FUNCTION ASU.GET_AMB_ONENAZ_KONS
/

--
-- GET_AMB_ONENAZ_KONS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_AMB_ONENAZ_KONS
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_AMB_ONENAZ_KONS
/

--
-- GET_AMB_ONENAZ_KONS  (Synonym) 
--
--  Dependencies: 
--   GET_AMB_ONENAZ_KONS (Function)
--
CREATE PUBLIC SYNONYM GET_AMB_ONENAZ_KONS FOR ASU.GET_AMB_ONENAZ_KONS
/


GRANT EXECUTE ON ASU.GET_AMB_ONENAZ_KONS TO PUBLIC
/

