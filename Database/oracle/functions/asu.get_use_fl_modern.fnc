DROP FUNCTION ASU.GET_USE_FL_MODERN
/

--
-- GET_USE_FL_MODERN  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_USE_FL_MODERN
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_USE_FL_MODERN
/

--
-- GET_USE_FL_MODERN  (Synonym) 
--
--  Dependencies: 
--   GET_USE_FL_MODERN (Function)
--
CREATE PUBLIC SYNONYM GET_USE_FL_MODERN FOR ASU.GET_USE_FL_MODERN
/


GRANT EXECUTE ON ASU.GET_USE_FL_MODERN TO PUBLIC
/

