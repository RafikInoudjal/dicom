DROP TRIGGER ASU.TOPOZD_BEFORE_INSERT
/

--
-- TOPOZD_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TOPOZD (Sequence)
--   TOPOZD (Table)
--
CREATE OR REPLACE TRIGGER ASU."TOPOZD_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TOPOZD REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TOPOZD.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


