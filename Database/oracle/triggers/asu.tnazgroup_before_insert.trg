DROP TRIGGER ASU.TNAZGROUP_BEFORE_INSERT
/

--
-- TNAZGROUP_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TNAZGROUP (Sequence)
--   TNAZGROUP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZGROUP_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TNAZGROUP  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_TNAZGROUP.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


