DROP TRIGGER ASU.TNAZMON_BEFORE_INSERT
/

--
-- TNAZMON_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TNAZMON (Sequence)
--   TNAZMON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZMON_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TNAZMON   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TNAZMON.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


