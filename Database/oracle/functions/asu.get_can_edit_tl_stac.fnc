DROP FUNCTION ASU.GET_CAN_EDIT_TL_STAC
/

--
-- GET_CAN_EDIT_TL_STAC  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CAN_EDIT_TL_STAC
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CAN_EDIT_TL_STAC
/

--
-- GET_CAN_EDIT_TL_STAC  (Synonym) 
--
--  Dependencies: 
--   GET_CAN_EDIT_TL_STAC (Function)
--
CREATE PUBLIC SYNONYM GET_CAN_EDIT_TL_STAC FOR ASU.GET_CAN_EDIT_TL_STAC
/


GRANT EXECUTE ON ASU.GET_CAN_EDIT_TL_STAC TO PUBLIC
/

