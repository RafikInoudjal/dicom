DROP TRIGGER ASU.TROOM_AFTER_DELETE
/

--
-- TROOM_AFTER_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TSRTIPROOM (Table)
--   TROOM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TROOM_AFTER_DELETE" 
AFTER INSERT OR DELETE
ON ASU.TROOM REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  DELETE FROM TSRTIPROOM WHERE FK_PALATAID=:OLD.FK_ID;
End;
/
SHOW ERRORS;


