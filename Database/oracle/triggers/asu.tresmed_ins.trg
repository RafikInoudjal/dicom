DROP TRIGGER ASU.TRESMED_INS
/

--
-- TRESMED_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TRESMED (Sequence)
--   TRESMED (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRESMED_INS" 
  BEFORE INSERT ON ASU.TRESMED   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT seq_tresmed.nextval INTO :new.fk_id FROM dual;
END;
/
SHOW ERRORS;


