DROP FUNCTION ASU.GET_RG_GROUP
/

--
-- GET_RG_GROUP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_RG_GROUP" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 795503;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_RG_GROUP TO PUBLIC
/

