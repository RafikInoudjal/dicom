DROP FUNCTION ASU.LIST_DIAGNOST_USE_BEIKOLVOCOPY
/

--
-- LIST_DIAGNOST_USE_BEIKOLVOCOPY  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.LIST_DIAGNOST_USE_BEIKOLVOCOPY
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM LIST_DIAGNOST_USE_BEIKOLVOCOPY
/

--
-- LIST_DIAGNOST_USE_BEIKOLVOCOPY  (Synonym) 
--
--  Dependencies: 
--   LIST_DIAGNOST_USE_BEIKOLVOCOPY (Function)
--
CREATE PUBLIC SYNONYM LIST_DIAGNOST_USE_BEIKOLVOCOPY FOR ASU.LIST_DIAGNOST_USE_BEIKOLVOCOPY
/


GRANT EXECUTE ON ASU.LIST_DIAGNOST_USE_BEIKOLVOCOPY TO PUBLIC
/

