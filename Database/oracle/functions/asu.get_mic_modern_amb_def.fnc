DROP FUNCTION ASU.GET_MIC_MODERN_AMB_DEF
/

--
-- GET_MIC_MODERN_AMB_DEF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_MIC_MODERN_AMB_DEF
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_MIC_MODERN_AMB_DEF
/

--
-- GET_MIC_MODERN_AMB_DEF  (Synonym) 
--
--  Dependencies: 
--   GET_MIC_MODERN_AMB_DEF (Function)
--
CREATE PUBLIC SYNONYM GET_MIC_MODERN_AMB_DEF FOR ASU.GET_MIC_MODERN_AMB_DEF
/


GRANT EXECUTE ON ASU.GET_MIC_MODERN_AMB_DEF TO PUBLIC
/

