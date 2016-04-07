DROP FUNCTION ASU.GET_DBF_AUTO_CHECK_DATA
/

--
-- GET_DBF_AUTO_CHECK_DATA  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_DBF_AUTO_CHECK_DATA
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_DBF_AUTO_CHECK_DATA
/

--
-- GET_DBF_AUTO_CHECK_DATA  (Synonym) 
--
--  Dependencies: 
--   GET_DBF_AUTO_CHECK_DATA (Function)
--
CREATE PUBLIC SYNONYM GET_DBF_AUTO_CHECK_DATA FOR ASU.GET_DBF_AUTO_CHECK_DATA
/


GRANT EXECUTE ON ASU.GET_DBF_AUTO_CHECK_DATA TO PUBLIC
/

