DROP TRIGGER ASU.TVRACHRAZ_INSERT
/

--
-- TVRACHRAZ_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TVRACHRAZ (Sequence)
--   TVRACHRAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVRACHRAZ_INSERT" 
  BEFORE INSERT
  ON ASU.TVRACHRAZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TVRACHRAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


