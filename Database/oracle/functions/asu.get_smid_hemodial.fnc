DROP FUNCTION ASU.GET_SMID_HEMODIAL
/

--
-- GET_SMID_HEMODIAL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_SMID_HEMODIAL
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1030638;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_SMID_HEMODIAL
/

--
-- GET_SMID_HEMODIAL  (Synonym) 
--
--  Dependencies: 
--   GET_SMID_HEMODIAL (Function)
--
CREATE PUBLIC SYNONYM GET_SMID_HEMODIAL FOR ASU.GET_SMID_HEMODIAL
/


GRANT EXECUTE ON ASU.GET_SMID_HEMODIAL TO PUBLIC
/

