DROP TRIGGER ASU.TWORKSTATION_BEFORE_INSERT
/

--
-- TWORKSTATION_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TWORKSTATION (Sequence)
--   TWORKSTATION (Table)
--
CREATE OR REPLACE TRIGGER ASU."TWORKSTATION_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.tworkstation
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT asu.seq_tworkstation.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


