DROP FUNCTION ASU.GET_XRAY_VRACH
/

--
-- GET_XRAY_VRACH  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_XRAY_VRACH" 
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 730;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_XRAY_VRACH TO PUBLIC
/

