DROP TRIGGER ASU.TSPECLAB_BEFORE_INSERT
/

--
-- TSPECLAB_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSPECLAB (Sequence)
--   TSPECLAB (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSPECLAB_BEFORE_INSERT" 
BEFORE  INSERT  ON ASU.TSPECLAB FOR EACH ROW
Begin
  SELECT SEQ_TSPECLAB.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


