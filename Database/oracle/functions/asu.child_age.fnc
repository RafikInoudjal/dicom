DROP FUNCTION ASU.CHILD_AGE
/

--
-- CHILD_AGE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."CHILD_AGE" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 18;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.CHILD_AGE TO PUBLIC
/

