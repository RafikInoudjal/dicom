DROP FUNCTION ASU.GET_CAN_DO_NAZ_MEDSES_REGIST
/

--
-- GET_CAN_DO_NAZ_MEDSES_REGIST  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_DO_NAZ_MEDSES_REGIST
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_DO_NAZ_MEDSES_REGIST
/

--
-- GET_CAN_DO_NAZ_MEDSES_REGIST  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_DO_NAZ_MEDSES_REGIST (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_DO_NAZ_MEDSES_REGIST FOR ASU.GET_CAN_DO_NAZ_MEDSES_REGIST
/


GRANT EXECUTE ON ASU.GET_CAN_DO_NAZ_MEDSES_REGIST TO PUBLIC
/

