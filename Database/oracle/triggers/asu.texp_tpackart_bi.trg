DROP TRIGGER ASU.TEXP_TPACKART_BI
/

--
-- TEXP_TPACKART_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TEXP_TPACKART (Sequence)
--   TEXP_TPACKART (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_TPACKART_BI
 BEFORE INSERT
 ON ASU.TEXP_TPACKART REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_TPACKART.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_TPACKART_BI;
/
SHOW ERRORS;


