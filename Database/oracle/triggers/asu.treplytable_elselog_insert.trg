DROP TRIGGER ASU.TREPLYTABLE_ELSELOG_INSERT
/

--
-- TREPLYTABLE_ELSELOG_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TREPLYTABLE_ELSELOG (Sequence)
--   TREPLYTABLE_ELSELOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TREPLYTABLE_ELSELOG_INSERT" 
 BEFORE
  INSERT
 ON ASU.TREPLYTABLE_ELSELOG REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT asu.SEQ_TREPLYTABLE_ELSELOG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


