DROP TRIGGER ASU.TMSG_SHEDULE_BEFORE_INSERT
/

--
-- TMSG_SHEDULE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TMSG_SHEDULE (Sequence)
--   TMSG_SHEDULE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMSG_SHEDULE_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TMSG_SHEDULE REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  SELECT SEQ_TMSG_SHEDULE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


