DROP FUNCTION ASU.GET_ZABOL_FK_REASON
/

--
-- GET_ZABOL_FK_REASON  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_ZABOL_FK_REASON
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_ZABOL_FK_REASON
/

--
-- GET_ZABOL_FK_REASON  (Synonym) 
--
--  Dependencies: 
--   GET_ZABOL_FK_REASON (Function)
--
CREATE PUBLIC SYNONYM GET_ZABOL_FK_REASON FOR ASU.GET_ZABOL_FK_REASON
/


GRANT EXECUTE ON ASU.GET_ZABOL_FK_REASON TO PUBLIC
/

