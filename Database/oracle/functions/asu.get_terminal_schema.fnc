DROP FUNCTION ASU.GET_TERMINAL_SCHEMA
/

--
-- GET_TERMINAL_SCHEMA  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_TERMINAL_SCHEMA
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_TERMINAL_SCHEMA
/

--
-- GET_TERMINAL_SCHEMA  (Synonym) 
--
--  Dependencies: 
--   GET_TERMINAL_SCHEMA (Function)
--
CREATE PUBLIC SYNONYM GET_TERMINAL_SCHEMA FOR ASU.GET_TERMINAL_SCHEMA
/


GRANT EXECUTE ON ASU.GET_TERMINAL_SCHEMA TO PUBLIC
/

