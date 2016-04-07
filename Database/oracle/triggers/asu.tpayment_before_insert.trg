DROP TRIGGER ASU.TPAYMENT_BEFORE_INSERT
/

--
-- TPAYMENT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPAYMENT (Sequence)
--   TPAYMENT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPAYMENT_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TPAYMENT  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TPAYMENT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


