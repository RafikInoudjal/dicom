DROP FUNCTION ASU.GET_CAN_SHOW_TUB_PRINT
/

--
-- GET_CAN_SHOW_TUB_PRINT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_SHOW_TUB_PRINT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_SHOW_TUB_PRINT
/

--
-- GET_CAN_SHOW_TUB_PRINT  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_SHOW_TUB_PRINT (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_SHOW_TUB_PRINT FOR ASU.GET_CAN_SHOW_TUB_PRINT
/


GRANT EXECUTE ON ASU.GET_CAN_SHOW_TUB_PRINT TO PUBLIC
/

