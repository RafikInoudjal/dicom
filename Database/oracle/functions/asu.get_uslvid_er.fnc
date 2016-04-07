DROP FUNCTION ASU.GET_USLVID_ER
/

--
-- GET_USLVID_ER  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_USLVID_ER
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_USLVID_ER
/

--
-- GET_USLVID_ER  (Synonym) 
--
--  Dependencies: 
--   GET_USLVID_ER (Function)
--
CREATE PUBLIC SYNONYM GET_USLVID_ER FOR ASU.GET_USLVID_ER
/


GRANT EXECUTE ON ASU.GET_USLVID_ER TO PUBLIC
/
