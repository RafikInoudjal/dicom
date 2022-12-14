DROP TRIGGER ASU.TSTREET_BEFORE_INSERT
/

--
-- TSTREET_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSTREET (Sequence)
--   TSTREET (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTREET_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TSTREET   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  SELECT SEQ_TSTREET.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


