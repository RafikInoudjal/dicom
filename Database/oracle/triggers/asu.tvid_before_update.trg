DROP TRIGGER ASU.TVID_BEFORE_UPDATE
/

--
-- TVID_BEFORE_UPDATE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TVID (Table)
--   TSUBVID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVID_BEFORE_UPDATE" 
  BEFORE UPDATE ON ASU.TVID   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  UPDATE TSUBVID SET FK_VIDID = :NEW.FK_ID WHERE FK_VIDID = :OLD.FK_ID;
End;
/
SHOW ERRORS;


