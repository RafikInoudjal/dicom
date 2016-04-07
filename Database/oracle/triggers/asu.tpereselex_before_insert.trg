DROP TRIGGER ASU.TPERESELEX_BEFORE_INSERT
/

--
-- TPERESELEX_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPERESEL (Sequence)
--   TPERESELEX (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPERESELEX_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPERESELEX REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPERESEL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


