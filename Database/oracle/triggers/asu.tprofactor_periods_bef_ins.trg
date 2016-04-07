DROP TRIGGER ASU.TPROFACTOR_PERIODS_BEF_INS
/

--
-- TPROFACTOR_PERIODS_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TPROFACTOR_PERIODS (Table)
--   SEQ_PROFACTOR_PERIODS (Sequence)
--
CREATE OR REPLACE TRIGGER ASU.TPROFACTOR_PERIODS_BEF_INS
 BEFORE
 INSERT
 ON ASU.TPROFACTOR_PERIODS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.SEQ_PROFACTOR_PERIODS.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
end;
/
SHOW ERRORS;


