DROP TRIGGER ASU.TQC_MLEVEL_BEFORE_INSERT
/

--
-- TQC_MLEVEL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_QC_LAB (Sequence)
--   TQC_MLEVEL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQC_MLEVEL_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TQC_MLEVEL  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_QC_LAB.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


