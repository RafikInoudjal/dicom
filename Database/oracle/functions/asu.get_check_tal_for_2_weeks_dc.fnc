DROP FUNCTION ASU.GET_CHECK_TAL_FOR_2_WEEKS_DC
/

--
-- GET_CHECK_TAL_FOR_2_WEEKS_DC  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CHECK_TAL_FOR_2_WEEKS_DC
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =-
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 365;
END;
/

SHOW ERRORS;


