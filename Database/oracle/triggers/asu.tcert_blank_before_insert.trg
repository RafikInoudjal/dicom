DROP TRIGGER ASU.TCERT_BLANK_BEFORE_INSERT
/

--
-- TCERT_BLANK_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TCERTIFCATION_BLANK (Sequence)
--   TCERTIFCATION_BLANK (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCERT_BLANK_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TCERTIFCATION_BLANK   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TCERTIFCATION_BLANK.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


