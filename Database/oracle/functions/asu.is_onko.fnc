DROP FUNCTION ASU.IS_ONKO
/

--
-- IS_ONKO  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.IS_ONKO
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM IS_ONKO
/

--
-- IS_ONKO  (Synonym) 
--
--  Dependencies: 
--   IS_ONKO (Function)
--
CREATE PUBLIC SYNONYM IS_ONKO FOR ASU.IS_ONKO
/


GRANT EXECUTE ON ASU.IS_ONKO TO PUBLIC
/

