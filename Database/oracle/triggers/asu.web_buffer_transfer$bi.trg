DROP TRIGGER ASU.WEB_BUFFER_TRANSFER$BI
/

--
-- WEB_BUFFER_TRANSFER$BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_WEB_BUFFER_TRANSFFER (Sequence)
--   WEB_BUFFER_TRANSFER (Table)
--
CREATE OR REPLACE TRIGGER ASU."WEB_BUFFER_TRANSFER$BI" 
  BEFORE INSERT ON ASU.WEB_BUFFER_TRANSFER   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_WEB_BUFFER_TRANSFFER.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/
SHOW ERRORS;


