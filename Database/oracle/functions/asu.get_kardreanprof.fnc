DROP FUNCTION ASU.GET_KARDREANPROF
/

--
-- GET_KARDREANPROF  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_KARDREANPROF" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 29701;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_KARDREANPROF TO PUBLIC
/

