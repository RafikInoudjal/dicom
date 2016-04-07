DROP TRIGGER ASU.TCHANGE_LOADED_SLUCH_BEF_INS
/

--
-- TCHANGE_LOADED_SLUCH_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TCHANGE_LOADED_SLUCH (Sequence)
--   TCHANGE_LOADED_SLUCH (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCHANGE_LOADED_SLUCH_BEF_INS" 
BEFORE  INSERT  ON asu.TCHANGE_LOADED_SLUCH
FOR EACH ROW
Begin
  SELECT asu.SEQ_TCHANGE_LOADED_SLUCH.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

