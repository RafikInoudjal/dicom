DROP TRIGGER ASU.TPODPISNAZ_BEFORE_INS
/

--
-- TPODPISNAZ_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPODPISNAZ (Sequence)
--   TPODPISNAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPODPISNAZ_BEFORE_INS" 
 BEFORE 
 INSERT
 ON ASU.TPODPISNAZ  FOR EACH ROW
BEGIN
  SELECT SEQ_TPODPISNAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


