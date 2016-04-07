DROP FUNCTION ASU.GET_CHECK_DOCVID
/

--
-- GET_CHECK_DOCVID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_CHECK_DOCVID
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_CHECK_DOCVID
/

--
-- GET_CHECK_DOCVID  (Synonym) 
--
--  Dependencies: 
--   GET_CHECK_DOCVID (Function)
--
CREATE PUBLIC SYNONYM GET_CHECK_DOCVID FOR ASU.GET_CHECK_DOCVID
/


GRANT EXECUTE ON ASU.GET_CHECK_DOCVID TO PUBLIC
/

