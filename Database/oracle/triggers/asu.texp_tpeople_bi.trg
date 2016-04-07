DROP TRIGGER ASU.TEXP_TPEOPLE_BI
/

--
-- TEXP_TPEOPLE_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TEXP_TPEOPLE (Sequence)
--   TEXP_TPEOPLES (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_TPEOPLE_BI
 BEFORE INSERT
 ON ASU.TEXP_TPEOPLES REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_TPEOPLE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_TPEOPLE_BI;
/
SHOW ERRORS;


