DROP TRIGGER ASU.TURALGOSMID
/

--
-- TURALGOSMID  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TURALGOSMID (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TURALGOSMID" 
BEFORE  INSERT  ON ASU.TURALGOSMID REFERENCING
 NEW AS NEW
 OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TURALGOSMID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


