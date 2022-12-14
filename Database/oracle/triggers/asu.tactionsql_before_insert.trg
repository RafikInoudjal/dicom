DROP TRIGGER ASU.TACTIONSQL_BEFORE_INSERT
/

--
-- TACTIONSQL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TACTIONSQL (Table)
--   SEQ_TACTIONSQL (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TACTIONSQL_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TACTIONSQL  REFERENCING OLD AS Old NEW AS New
 FOR EACH ROW
Begin
  SELECT SEQ_TACTIONSQL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


