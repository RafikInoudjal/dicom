DROP TRIGGER ASU.TSIGN_SQL_RULES_BEFORE_INSERT
/

--
-- TSIGN_SQL_RULES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSIGN_SQL_RULES (Sequence)
--   TSIGN_SQL_RULES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSIGN_SQL_RULES_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TSIGN_SQL_RULES   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  if :NEW.FK_ID is null then
    SELECT SEQ_TSIGN_SQL_RULES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


