DROP TRIGGER ASU.TIS_DISP_POPULDATA_IND_INSP_BI
/

--
-- TIS_DISP_POPULDATA_IND_INSP_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_DISP_POPULDATA_IND_INS (Sequence)
--   TIS_DISP_POPULDATA_IND_INSPECT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPULDATA_IND_INSP_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPULDATA_IND_INSPECT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPULDATA_IND_INS.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


