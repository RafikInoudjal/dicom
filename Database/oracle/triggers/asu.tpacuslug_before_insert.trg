DROP TRIGGER ASU.TPACUSLUG_BEFORE_INSERT
/

--
-- TPACUSLUG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPACUSLUG (Sequence)
--   TPACUSLUG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPACUSLUG_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TPACUSLUG  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TPACUSLUG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


