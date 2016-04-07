DROP FUNCTION ASU.GET_CAN_NEYAVKA3
/

--
-- GET_CAN_NEYAVKA3  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_NEYAVKA3
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_NEYAVKA3
/

--
-- GET_CAN_NEYAVKA3  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_NEYAVKA3 (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_NEYAVKA3 FOR ASU.GET_CAN_NEYAVKA3
/


GRANT EXECUTE ON ASU.GET_CAN_NEYAVKA3 TO PUBLIC
/

