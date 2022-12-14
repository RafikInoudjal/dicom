DROP TRIGGER ASU.TKIOSK_CONFIG_BEF_INS
/

--
-- TKIOSK_CONFIG_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKIOSK_CONFIG (Sequence)
--   TKIOSK_CONFIG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TKIOSK_CONFIG_BEF_INS"
BEFORE INSERT
ON ASU.TKIOSK_CONFIG REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  IF :NEW.FK_ID IS NULL THEN
     SELECT ASU.SEQ_TKIOSK_CONFIG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  END IF;
End;
/
SHOW ERRORS;


