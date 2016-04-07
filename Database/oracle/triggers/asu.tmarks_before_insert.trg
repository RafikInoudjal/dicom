DROP TRIGGER ASU.TMARKS_BEFORE_INSERT
/

--
-- TMARKS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TMARKS (Sequence)
--   TMARKS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMARKS_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TMARKS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TMARKS.NEXTVAL INTO :NEW.MARKSID FROM DUAL;
END;
/
SHOW ERRORS;


