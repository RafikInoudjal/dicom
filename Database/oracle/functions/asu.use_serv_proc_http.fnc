DROP FUNCTION ASU.USE_SERV_PROC_HTTP
/

--
-- USE_SERV_PROC_HTTP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.USE_SERV_PROC_HTTP
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM USE_SERV_PROC_HTTP
/

--
-- USE_SERV_PROC_HTTP  (Synonym) 
--
--  Dependencies: 
--   USE_SERV_PROC_HTTP (Function)
--
CREATE PUBLIC SYNONYM USE_SERV_PROC_HTTP FOR ASU.USE_SERV_PROC_HTTP
/


GRANT EXECUTE ON ASU.USE_SERV_PROC_HTTP TO PUBLIC
/

