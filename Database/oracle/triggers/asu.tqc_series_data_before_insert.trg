DROP TRIGGER ASU.TQC_SERIES_DATA_BEFORE_INSERT
/

--
-- TQC_SERIES_DATA_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_QC_LAB (Sequence)
--   TQC_SERIES_DATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQC_SERIES_DATA_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON ASU.TQC_SERIES_DATA REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
    SELECT SEQ_QC_LAB.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


