DROP TRIGGER ASU.TFISCALREPORT_BEFORE_INSERT
/

--
-- TFISCALREPORT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TFISCALREPORT (Sequence)
--   TFISCALREPORT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TFISCALREPORT_BEFORE_INSERT
BEFORE INSERT
ON ASU.TFISCALREPORT REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  IF :new.fk_id IS NULL THEN
    SELECT ASU.SEQ_TFISCALREPORT.NEXTVAL INTO :new.fk_id FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


