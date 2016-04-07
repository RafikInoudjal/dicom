DROP FUNCTION ASU.GET_GINEKPROF
/

--
-- GET_GINEKPROF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_GINEKPROF" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 29689;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_GINEKPROF TO PUBLIC
/

