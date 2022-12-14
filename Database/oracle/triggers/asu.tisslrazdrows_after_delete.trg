DROP TRIGGER ASU.TISSLRAZDROWS_AFTER_DELETE
/

--
-- TISSLRAZDROWS_AFTER_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TISSLRAZDDEPS (Table)
--   TISSLRAZDROWS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TISSLRAZDROWS_AFTER_DELETE" 
AFTER  DELETE  ON ASU.TISSLRAZDROWS REFERENCING
 NEW AS NEW
 OLD AS OLD
FOR EACH ROW
Begin
  DELETE FROM TISSLRAZDDEPS WHERE FK_ROWID=:OLD.FK_ID;
End;
/
SHOW ERRORS;


