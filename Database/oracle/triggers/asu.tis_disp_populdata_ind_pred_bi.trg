DROP TRIGGER ASU.TIS_DISP_POPULDATA_IND_PRED_BI
/

--
-- TIS_DISP_POPULDATA_IND_PRED_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_DISP_POPULDATA_IND_PRE (Sequence)
--   TIS_DISP_POPULDATA_IND_PREDIAG (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPULDATA_IND_PRED_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPULDATA_IND_PREDIAG   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPULDATA_IND_PRE.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


