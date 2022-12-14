DROP TRIGGER ASU.TIS_DISP_POPUL_IND_RISK_IN_BI
/

--
-- TIS_DISP_POPUL_IND_RISK_IN_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_DISP_POPUL_IND_RISK_IN (Sequence)
--   TIS_DISP_POPUL_IND_RISK_INSP (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPUL_IND_RISK_IN_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPUL_IND_RISK_INSP   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPUL_IND_RISK_IN.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


