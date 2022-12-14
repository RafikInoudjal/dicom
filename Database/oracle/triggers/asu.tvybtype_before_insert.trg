DROP TRIGGER ASU.TVYBTYPE_BEFORE_INSERT
/

--
-- TVYBTYPE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TVYBTYPE (Sequence)
--   TVYBTYPE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVYBTYPE_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TVYBTYPE REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TVybType.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


