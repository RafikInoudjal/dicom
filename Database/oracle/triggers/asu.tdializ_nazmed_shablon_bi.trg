DROP TRIGGER ASU.TDIALIZ_NAZMED_SHABLON_BI
/

--
-- TDIALIZ_NAZMED_SHABLON_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDIALIZ_NAZMED_SHABLON (Sequence)
--   TDIALIZ_NAZMED_SHABLON (Table)
--
CREATE OR REPLACE TRIGGER ASU.TDIALIZ_NAZMED_SHABLON_BI
  BEFORE INSERT ON ASU.TDIALIZ_NAZMED_SHABLON   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TDIALIZ_NAZMED_SHABLON.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


