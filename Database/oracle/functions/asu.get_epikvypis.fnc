DROP FUNCTION ASU.GET_EPIKVYPIS
/

--
-- GET_EPIKVYPIS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_EPIKVYPIS" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 260593;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_EPIKVYPIS TO PUBLIC
/

