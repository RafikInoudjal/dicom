DROP TRIGGER ASU.TPICS_AFTER_DELETE
/

--
-- TPICS_AFTER_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TBLOBS (Table)
--   TPICS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPICS_AFTER_DELETE" 
  AFTER DELETE ON ASU.TPICS   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  DELETE FROM TBLOBS WHERE FK_ID = :old.FK_BLOBID;
END;
/
SHOW ERRORS;


