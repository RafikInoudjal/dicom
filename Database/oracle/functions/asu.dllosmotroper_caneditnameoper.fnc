DROP FUNCTION ASU.DLLOSMOTROPER_CANEDITNAMEOPER
/

--
-- DLLOSMOTROPER_CANEDITNAMEOPER  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.DLLOSMOTROPER_CANEDITNAMEOPER
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM DLLOSMOTROPER_CANEDITNAMEOPER
/

--
-- DLLOSMOTROPER_CANEDITNAMEOPER  (Synonym) 
--
--  Dependencies: 
--   DLLOSMOTROPER_CANEDITNAMEOPER (Function)
--
CREATE PUBLIC SYNONYM DLLOSMOTROPER_CANEDITNAMEOPER FOR ASU.DLLOSMOTROPER_CANEDITNAMEOPER
/


GRANT EXECUTE ON ASU.DLLOSMOTROPER_CANEDITNAMEOPER TO PUBLIC
/

