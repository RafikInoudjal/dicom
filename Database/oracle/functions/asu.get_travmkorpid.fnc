DROP FUNCTION ASU.GET_TRAVMKORPID
/

--
-- GET_TRAVMKORPID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_TRAVMKORPID" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 452;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_TRAVMKORPID TO PUBLIC
/

