DROP FUNCTION ASU.GET_VRACH1_SHOW_COUNT
/

--
-- GET_VRACH1_SHOW_COUNT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_VRACH1_SHOW_COUNT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_VRACH1_SHOW_COUNT
/

--
-- GET_VRACH1_SHOW_COUNT  (Synonym) 
--
--  Dependencies: 
--   GET_VRACH1_SHOW_COUNT (Function)
--
CREATE PUBLIC SYNONYM GET_VRACH1_SHOW_COUNT FOR ASU.GET_VRACH1_SHOW_COUNT
/


GRANT EXECUTE ON ASU.GET_VRACH1_SHOW_COUNT TO PUBLIC
/

