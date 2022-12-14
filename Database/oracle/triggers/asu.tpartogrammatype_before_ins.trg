DROP TRIGGER ASU.TPARTOGRAMMATYPE_BEFORE_INS
/

--
-- TPARTOGRAMMATYPE_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPARTOGRAMMATYPE (Sequence)
--   TPARTOGRAMMATYPE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPARTOGRAMMATYPE_BEFORE_INS" 
  BEFORE INSERT
  ON ASU.TPARTOGRAMMATYPE   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TPARTOGRAMMATYPE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


