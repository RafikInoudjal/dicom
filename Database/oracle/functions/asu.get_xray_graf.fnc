DROP FUNCTION ASU.GET_XRAY_GRAF
/

--
-- GET_XRAY_GRAF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_XRAY_GRAF" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 303124;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_XRAY_GRAF TO PUBLIC
/

