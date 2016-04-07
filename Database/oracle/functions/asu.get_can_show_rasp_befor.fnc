DROP FUNCTION ASU.GET_CAN_SHOW_RASP_BEFOR
/

--
-- GET_CAN_SHOW_RASP_BEFOR  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_SHOW_RASP_BEFOR
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_SHOW_RASP_BEFOR
/

--
-- GET_CAN_SHOW_RASP_BEFOR  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_SHOW_RASP_BEFOR (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_SHOW_RASP_BEFOR FOR ASU.GET_CAN_SHOW_RASP_BEFOR
/


GRANT EXECUTE ON ASU.GET_CAN_SHOW_RASP_BEFOR TO PUBLIC
/

