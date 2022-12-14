DROP TRIGGER ASU.TBILL_BEFORE_INSERT
/

--
-- TBILL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TBILL (Sequence)
--   TBILL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TBILL_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TBILL  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TBILL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


