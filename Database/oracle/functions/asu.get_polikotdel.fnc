DROP FUNCTION ASU.GET_POLIKOTDEL
/

--
-- GET_POLIKOTDEL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_POLIKOTDEL" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 21469;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_POLIKOTDEL TO PUBLIC
/

