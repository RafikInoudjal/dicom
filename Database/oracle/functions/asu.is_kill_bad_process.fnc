DROP FUNCTION ASU.IS_KILL_BAD_PROCESS
/

--
-- IS_KILL_BAD_PROCESS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.IS_KILL_BAD_PROCESS
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM IS_KILL_BAD_PROCESS
/

--
-- IS_KILL_BAD_PROCESS  (Synonym) 
--
--  Dependencies: 
--   IS_KILL_BAD_PROCESS (Function)
--
CREATE PUBLIC SYNONYM IS_KILL_BAD_PROCESS FOR ASU.IS_KILL_BAD_PROCESS
/


GRANT EXECUTE ON ASU.IS_KILL_BAD_PROCESS TO PUBLIC
/

