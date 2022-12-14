DROP TRIGGER ASU.TPRIEMNAZ_BEFORE_INSERT
/

--
-- TPRIEMNAZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPRIEMNAZ (Sequence)
--   TPRIEMNAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPRIEMNAZ_BEFORE_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TPRIEMNAZ  FOR EACH ROW
BEGIN
  SELECT SEQ_TPRIEMNAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


