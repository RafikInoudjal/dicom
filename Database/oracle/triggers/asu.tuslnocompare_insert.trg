DROP TRIGGER ASU.TUSLNOCOMPARE_INSERT
/

--
-- TUSLNOCOMPARE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TUSLNOCOMPARE (Sequence)
--   TUSLNOCOMPARE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUSLNOCOMPARE_INSERT" 
 BEFORE
  INSERT
 ON asu.TUSLNOCOMPARE
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TUSLNOCOMPARE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


