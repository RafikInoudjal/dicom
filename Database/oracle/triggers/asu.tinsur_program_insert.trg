DROP TRIGGER ASU.TINSUR_PROGRAM_INSERT
/

--
-- TINSUR_PROGRAM_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TINSUR_PROGRAMM (Sequence)
--   TINSUR_PROGRAM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSUR_PROGRAM_INSERT" 
  BEFORE INSERT ON ASU.TINSUR_PROGRAM   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  SELECT SEQ_TINSUR_PROGRAMM.NEXTVAL INTO :NEW.FK_ID FROM DUAL;

END TINSUR_DOGOVOR_INSERT;
/
SHOW ERRORS;


