DROP TRIGGER ASU.TGUARDIAN_BI
/

--
-- TGUARDIAN_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TGUARDIAN (Sequence)
--   TGUARDIAN (Table)
--
CREATE OR REPLACE TRIGGER ASU.TGUARDIAN_BI
 BEFORE INSERT
 ON ASU.TGUARDIAN REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TGUARDIAN.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TGUARDIAN_BI;
/
SHOW ERRORS;

