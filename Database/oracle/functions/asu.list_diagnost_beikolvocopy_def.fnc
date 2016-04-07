DROP FUNCTION ASU.LIST_DIAGNOST_BEIKOLVOCOPY_DEF
/

--
-- LIST_DIAGNOST_BEIKOLVOCOPY_DEF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.LIST_DIAGNOST_BEIKOLVOCOPY_DEF
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 2;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM LIST_DIAGNOST_BEIKOLVOCOPY_DEF
/

--
-- LIST_DIAGNOST_BEIKOLVOCOPY_DEF  (Synonym) 
--
--  Dependencies: 
--   LIST_DIAGNOST_BEIKOLVOCOPY_DEF (Function)
--
CREATE PUBLIC SYNONYM LIST_DIAGNOST_BEIKOLVOCOPY_DEF FOR ASU.LIST_DIAGNOST_BEIKOLVOCOPY_DEF
/


GRANT EXECUTE ON ASU.LIST_DIAGNOST_BEIKOLVOCOPY_DEF TO PUBLIC
/

