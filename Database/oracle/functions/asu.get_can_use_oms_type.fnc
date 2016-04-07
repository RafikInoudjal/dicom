DROP FUNCTION ASU.GET_CAN_USE_OMS_TYPE
/

--
-- GET_CAN_USE_OMS_TYPE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_USE_OMS_TYPE
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_USE_OMS_TYPE
/

--
-- GET_CAN_USE_OMS_TYPE  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_USE_OMS_TYPE (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_USE_OMS_TYPE FOR ASU.GET_CAN_USE_OMS_TYPE
/


GRANT EXECUTE ON ASU.GET_CAN_USE_OMS_TYPE TO PUBLIC
/

