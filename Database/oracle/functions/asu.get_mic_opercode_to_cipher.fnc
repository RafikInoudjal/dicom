DROP FUNCTION ASU.GET_MIC_OPERCODE_TO_CIPHER
/

--
-- GET_MIC_OPERCODE_TO_CIPHER  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_MIC_OPERCODE_TO_CIPHER
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_MIC_OPERCODE_TO_CIPHER
/

--
-- GET_MIC_OPERCODE_TO_CIPHER  (Synonym) 
--
--  Dependencies: 
--   GET_MIC_OPERCODE_TO_CIPHER (Function)
--
CREATE PUBLIC SYNONYM GET_MIC_OPERCODE_TO_CIPHER FOR ASU.GET_MIC_OPERCODE_TO_CIPHER
/


GRANT EXECUTE ON ASU.GET_MIC_OPERCODE_TO_CIPHER TO PUBLIC
/

