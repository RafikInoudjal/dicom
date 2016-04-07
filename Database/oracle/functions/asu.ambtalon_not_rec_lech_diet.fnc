DROP FUNCTION ASU.AMBTALON_NOT_REC_LECH_DIET
/

--
-- AMBTALON_NOT_REC_LECH_DIET  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.AMBTALON_NOT_REC_LECH_DIET
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM AMBTALON_NOT_REC_LECH_DIET
/

--
-- AMBTALON_NOT_REC_LECH_DIET  (Synonym) 
--
--  Dependencies: 
--   AMBTALON_NOT_REC_LECH_DIET (Function)
--
CREATE PUBLIC SYNONYM AMBTALON_NOT_REC_LECH_DIET FOR ASU.AMBTALON_NOT_REC_LECH_DIET
/


GRANT EXECUTE ON ASU.AMBTALON_NOT_REC_LECH_DIET TO PUBLIC
/

