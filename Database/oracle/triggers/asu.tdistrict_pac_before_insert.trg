DROP TRIGGER ASU.TDISTRICT_PAC_BEFORE_INSERT
/

--
-- TDISTRICT_PAC_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDISTRICT_PACIENT (Sequence)
--   TDISTRICT_PACIENT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDISTRICT_PAC_BEFORE_INSERT" 
 BEFORE INSERT ON ASU.TDISTRICT_PACIENT  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
  SELECT ASU.SEQ_TDISTRICT_PACIENT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END;
/
SHOW ERRORS;


