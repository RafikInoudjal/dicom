DROP TRIGGER ASU.TQCRECOVERSPR_BEFORE_INSERT
/

--
-- TQCRECOVERSPR_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TQCRECOVERSPR (Sequence)
--   TQCRECOVERSPR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCRECOVERSPR_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCRECOVERSPR REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCRECOVERSPR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


