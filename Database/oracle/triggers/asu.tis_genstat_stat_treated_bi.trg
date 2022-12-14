DROP TRIGGER ASU.TIS_GENSTAT_STAT_TREATED_BI
/

--
-- TIS_GENSTAT_STAT_TREATED_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_GENSTAT_STAT_TREATED (Sequence)
--   TIS_GENSTAT_STAT_TREATED (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_GENSTAT_STAT_TREATED_BI
  BEFORE INSERT
  ON ASU.TIS_GENSTAT_STAT_TREATED   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_GENSTAT_STAT_TREATED.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


