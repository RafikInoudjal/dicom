DROP TRIGGER ASU.TUSL_ZATRAT_BEFORE_INSERT
/

--
-- TUSL_ZATRAT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TUSL_ZATRAT (Sequence)
--   TUSL_ZATRAT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUSL_ZATRAT_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tusl_zatrat
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_tusl_zatrat.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


