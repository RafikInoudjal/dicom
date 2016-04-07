DROP FUNCTION ASU.AMB_V_FIRST_DISP
/

--
-- AMB_V_FIRST_DISP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.AMB_V_FIRST_DISP
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM AMB_V_FIRST_DISP
/

--
-- AMB_V_FIRST_DISP  (Synonym) 
--
--  Dependencies: 
--   AMB_V_FIRST_DISP (Function)
--
CREATE PUBLIC SYNONYM AMB_V_FIRST_DISP FOR ASU.AMB_V_FIRST_DISP
/


GRANT EXECUTE ON ASU.AMB_V_FIRST_DISP TO PUBLIC
/

