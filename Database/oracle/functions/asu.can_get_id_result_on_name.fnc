DROP FUNCTION ASU.CAN_GET_ID_RESULT_ON_NAME
/

--
-- CAN_GET_ID_RESULT_ON_NAME  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.CAN_GET_ID_RESULT_ON_NAME
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM CAN_GET_ID_RESULT_ON_NAME
/

--
-- CAN_GET_ID_RESULT_ON_NAME  (Synonym) 
--
--  Dependencies: 
--   CAN_GET_ID_RESULT_ON_NAME (Function)
--
CREATE PUBLIC SYNONYM CAN_GET_ID_RESULT_ON_NAME FOR ASU.CAN_GET_ID_RESULT_ON_NAME
/


GRANT EXECUTE ON ASU.CAN_GET_ID_RESULT_ON_NAME TO PUBLIC
/

