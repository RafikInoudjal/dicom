DROP FUNCTION ASU.USE_MANY_TEMPLATES_IN_ZAKL
/

--
-- USE_MANY_TEMPLATES_IN_ZAKL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.USE_MANY_TEMPLATES_IN_ZAKL
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM USE_MANY_TEMPLATES_IN_ZAKL
/

--
-- USE_MANY_TEMPLATES_IN_ZAKL  (Synonym) 
--
--  Dependencies: 
--   USE_MANY_TEMPLATES_IN_ZAKL (Function)
--
CREATE PUBLIC SYNONYM USE_MANY_TEMPLATES_IN_ZAKL FOR ASU.USE_MANY_TEMPLATES_IN_ZAKL
/


GRANT EXECUTE ON ASU.USE_MANY_TEMPLATES_IN_ZAKL TO PUBLIC
/

