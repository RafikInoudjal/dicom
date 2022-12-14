DROP TRIGGER ASU.TMDD_DBF_INSERT
/

--
-- TMDD_DBF_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TMDA_DBF (Sequence)
--   TMDD_DBF (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMDD_DBF_INSERT" 
 BEFORE
  INSERT
 ON asu.TMDD_DBF
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TMDA_DBF.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


