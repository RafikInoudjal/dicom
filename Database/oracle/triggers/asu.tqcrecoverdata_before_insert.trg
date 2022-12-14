DROP TRIGGER ASU.TQCRECOVERDATA_BEFORE_INSERT
/

--
-- TQCRECOVERDATA_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TQCRECOVERDATA (Sequence)
--   TQCRECOVERDATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCRECOVERDATA_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCRECOVERDATA REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCRECOVERDATA.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


