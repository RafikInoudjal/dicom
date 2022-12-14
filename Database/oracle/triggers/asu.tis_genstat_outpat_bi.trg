DROP TRIGGER ASU.TIS_GENSTAT_OUTPAT_BI
/

--
-- TIS_GENSTAT_OUTPAT_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_GENSTAT_OUTPAT (Sequence)
--   TIS_GENSTAT_OUTPAT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_GENSTAT_OUTPAT_BI
  BEFORE INSERT
  ON ASU.TIS_GENSTAT_OUTPAT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_GENSTAT_OUTPAT.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


