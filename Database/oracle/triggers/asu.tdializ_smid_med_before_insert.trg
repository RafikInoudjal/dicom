DROP TRIGGER ASU.TDIALIZ_SMID_MED_BEFORE_INSERT
/

--
-- TDIALIZ_SMID_MED_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDIALIZ_SMID_MED (Sequence)
--   TDIALIZ_SMID_MED (Table)
--
CREATE OR REPLACE TRIGGER ASU.TDIALIZ_SMID_MED_BEFORE_INSERT
  BEFORE INSERT ON ASU.TDIALIZ_SMID_MED   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TDIALIZ_SMID_MED.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


