DROP FUNCTION ASU.GET_TIME_RG_ISSL
/

--
-- GET_TIME_RG_ISSL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_TIME_RG_ISSL" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 795511;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_TIME_RG_ISSL TO PUBLIC
/

