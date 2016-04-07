DROP TRIGGER ASU.TSROKY_BEFORE_INSERT
/

--
-- TSROKY_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSROKY (Sequence)
--   TSROKY (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSROKY_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TSROKY   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSROKY.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


