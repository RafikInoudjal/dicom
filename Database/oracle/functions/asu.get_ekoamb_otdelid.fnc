DROP FUNCTION ASU.GET_EKOAMB_OTDELID
/

--
-- GET_EKOAMB_OTDELID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_EKOAMB_OTDELID
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_EKOAMB_OTDELID
/

--
-- GET_EKOAMB_OTDELID  (Synonym) 
--
--  Dependencies: 
--   GET_EKOAMB_OTDELID (Function)
--
CREATE PUBLIC SYNONYM GET_EKOAMB_OTDELID FOR ASU.GET_EKOAMB_OTDELID
/


GRANT EXECUTE ON ASU.GET_EKOAMB_OTDELID TO PUBLIC
/

