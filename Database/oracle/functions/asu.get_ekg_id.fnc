DROP FUNCTION ASU.GET_EKG_ID
/

--
-- GET_EKG_ID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_EKG_ID" 
  RETURN NUMBER
  IS --by aAdmin.exe
BEGIN
  Return 24583;
END;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_EKG_ID TO PUBLIC
/

