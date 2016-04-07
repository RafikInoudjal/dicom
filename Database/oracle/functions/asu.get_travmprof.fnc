DROP FUNCTION ASU.GET_TRAVMPROF
/

--
-- GET_TRAVMPROF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_TRAVMPROF" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 29688;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_TRAVMPROF TO PUBLIC
/

