DROP TRIGGER ASU.TPUTPLANDAYS_BEFORE_INSERT
/

--
-- TPUTPLANDAYS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPUTPLANDAYS (Sequence)
--   TPUTPLANDAYS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPUTPLANDAYS_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPUTPLANDAYS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPutplandays.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


