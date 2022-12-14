DROP TRIGGER ASU.TSANITARIUMS_BEFORE_INSERT
/

--
-- TSANITARIUMS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSANITARIUMS (Sequence)
--   TSANITARIUMS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSANITARIUMS_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TSANITARIUMS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TSANITARIUMS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


