DROP TRIGGER ASU.TVID_DELETE_ALL
/

--
-- TVID_DELETE_ALL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TVID (Table)
--   TSUBVID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVID_DELETE_ALL" 
  AFTER DELETE ON ASU.TVID   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  Delete from TSUBVID where FK_VidId = :OLD.FK_ID;
end;
/
SHOW ERRORS;


