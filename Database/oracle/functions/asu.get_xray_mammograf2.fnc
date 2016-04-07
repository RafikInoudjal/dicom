DROP FUNCTION ASU.GET_XRAY_MAMMOGRAF2
/

--
-- GET_XRAY_MAMMOGRAF2  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_XRAY_MAMMOGRAF2
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_XRAY_MAMMOGRAF2
/

--
-- GET_XRAY_MAMMOGRAF2  (Synonym) 
--
--  Dependencies: 
--   GET_XRAY_MAMMOGRAF2 (Function)
--
CREATE PUBLIC SYNONYM GET_XRAY_MAMMOGRAF2 FOR ASU.GET_XRAY_MAMMOGRAF2
/


GRANT EXECUTE ON ASU.GET_XRAY_MAMMOGRAF2 TO PUBLIC
/

