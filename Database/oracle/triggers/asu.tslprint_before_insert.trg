DROP TRIGGER ASU.TSLPRINT_BEFORE_INSERT
/

--
-- TSLPRINT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSLPRINT (Sequence)
--   TSLPRINT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSLPRINT_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TSLPRINT   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSLPRINT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


