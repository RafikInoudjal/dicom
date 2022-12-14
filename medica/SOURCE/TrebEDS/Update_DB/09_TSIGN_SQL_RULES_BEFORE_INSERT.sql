CREATE OR REPLACE TRIGGER "ASU"."TSIGN_SQL_RULES_BEFORE_INSERT"
  BEFORE INSERT
  ON ASU.TSIGN_SQL_RULES
  REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  if :NEW.FK_ID is null then
    SELECT SEQ_TSIGN_SQL_RULES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;  
End;
/
