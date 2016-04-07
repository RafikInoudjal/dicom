DROP TRIGGER ASU.TQCSHUHART_BEFORE_INSERT
/

--
-- TQCSHUHART_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TQCSHUHART (Sequence)
--   TQCSHUHART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCSHUHART_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCSHUHART REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCSHUHART.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


