DROP FUNCTION ASU.GET_USE_FR3_STAT_KARTA_A5_PR
/

--
-- GET_USE_FR3_STAT_KARTA_A5_PR  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_USE_FR3_STAT_KARTA_A5_PR
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_USE_FR3_STAT_KARTA_A5_PR
/

--
-- GET_USE_FR3_STAT_KARTA_A5_PR  (Synonym) 
--
--  Dependencies: 
--   GET_USE_FR3_STAT_KARTA_A5_PR (Function)
--
CREATE PUBLIC SYNONYM GET_USE_FR3_STAT_KARTA_A5_PR FOR ASU.GET_USE_FR3_STAT_KARTA_A5_PR
/


GRANT EXECUTE ON ASU.GET_USE_FR3_STAT_KARTA_A5_PR TO PUBLIC
/

