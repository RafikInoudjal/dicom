DROP TRIGGER ASU.TSLUCH_DBF_INSERT
/

--
-- TSLUCH_DBF_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSLUCH_DBF (Sequence)
--   TSLUCH_DBF (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSLUCH_DBF_INSERT" 
 BEFORE
  INSERT
 ON asu.TSLUCH_DBF
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TSLUCH_DBF.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


