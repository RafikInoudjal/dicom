DROP FUNCTION ASU.GET_CAN_SHOW_SET_USLUGA
/

--
-- GET_CAN_SHOW_SET_USLUGA  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_SHOW_SET_USLUGA
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_SHOW_SET_USLUGA
/

--
-- GET_CAN_SHOW_SET_USLUGA  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_SHOW_SET_USLUGA (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_SHOW_SET_USLUGA FOR ASU.GET_CAN_SHOW_SET_USLUGA
/


GRANT EXECUTE ON ASU.GET_CAN_SHOW_SET_USLUGA TO PUBLIC
/

