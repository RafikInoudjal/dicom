DROP TRIGGER ASU.TUSLVID_BEFORE_INSERT
/

--
-- TUSLVID_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TUSLVID (Sequence)
--   TUSLVID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUSLVID_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TUSLVID REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TUSLVID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


