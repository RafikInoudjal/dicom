DROP FUNCTION ASU.GET_KDS_OTDEL
/

--
-- GET_KDS_OTDEL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_KDS_OTDEL
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_KDS_OTDEL
/

--
-- GET_KDS_OTDEL  (Synonym) 
--
--  Dependencies: 
--   GET_KDS_OTDEL (Function)
--
CREATE PUBLIC SYNONYM GET_KDS_OTDEL FOR ASU.GET_KDS_OTDEL
/


GRANT EXECUTE ON ASU.GET_KDS_OTDEL TO PUBLIC
/

