DROP TRIGGER ASU.TTOWN_BEFORE_INSERT
/

--
-- TTOWN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TTOWN (Sequence)
--   TTOWN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTOWN_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TTOWN   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  SELECT SEQ_TTOWN.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


