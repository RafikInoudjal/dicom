DROP TRIGGER ASU.TTUBPARAM_DELETE
/

--
-- TTUBPARAM_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TTUBPARAM (Table)
--   TPLANTUB (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTUBPARAM_DELETE" 
 BEFORE
  DELETE
 ON asu.ttubparam
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  DELETE FROM ASU.TPLANTUB WHERE FK_TUBID = :OLD.FK_ID;
END;
/
SHOW ERRORS;


