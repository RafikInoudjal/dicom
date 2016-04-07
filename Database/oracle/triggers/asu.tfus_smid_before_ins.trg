DROP TRIGGER ASU.TFUS_SMID_BEFORE_INS
/

--
-- TFUS_SMID_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TFUS_SMID (Sequence)
--   TFUS_SMID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TFUS_SMID_BEFORE_INS" 
 BEFORE
 INSERT
 ON ASU.TFUS_SMID  FOR EACH ROW
BEGIN
 SELECT SEQ_TFUS_SMID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


