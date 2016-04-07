DROP TRIGGER ASU.TSMSPEC_BEFOR_INSERT
/

--
-- TSMSPEC_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSMSPEC (Sequence)
--   TSMSPEC (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSMSPEC_BEFOR_INSERT" 
  BEFORE INSERT
  ON ASU.TSMSPEC   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSMSPEC.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


