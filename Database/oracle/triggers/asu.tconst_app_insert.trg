DROP TRIGGER ASU.TCONST_APP_INSERT
/

--
-- TCONST_APP_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TCONST_APP (Sequence)
--   TCONST_APP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCONST_APP_INSERT" 
  BEFORE INSERT ON ASU.TCONST_APP   FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TCONST_APP.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


