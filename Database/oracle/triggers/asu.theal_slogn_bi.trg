DROP TRIGGER ASU.THEAL_SLOGN_BI
/

--
-- THEAL_SLOGN_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_THEAL_SLOGN (Sequence)
--   THEAL_SLOGN (Table)
--
CREATE OR REPLACE TRIGGER ASU.THEAL_SLOGN_BI
 BEFORE INSERT
 ON ASU.THEAL_SLOGN REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_THEAL_SLOGN.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END;
/
SHOW ERRORS;


