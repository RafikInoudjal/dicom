DROP TRIGGER ASU.TSUBVID_BEFORE_INSERT
/

--
-- TSUBVID_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSUBVID (Sequence)
--   TSUBVID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSUBVID_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TSUBVID   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSUBVID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


