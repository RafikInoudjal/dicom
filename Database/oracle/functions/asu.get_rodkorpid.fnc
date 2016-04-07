DROP FUNCTION ASU.GET_RODKORPID
/

--
-- GET_RODKORPID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_RODKORPID" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 509;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_RODKORPID TO PUBLIC
/

