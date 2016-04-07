DROP TRIGGER ASU.TIS_PLAN_DEPTPOWER_BI
/

--
-- TIS_PLAN_DEPTPOWER_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_PLAN_DEPTPOWER (Sequence)
--   TIS_PLAN_DEPTPOWER (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_PLAN_DEPTPOWER_BI
  BEFORE INSERT
  ON ASU.TIS_PLAN_DEPTPOWER   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_PLAN_DEPTPOWER.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


