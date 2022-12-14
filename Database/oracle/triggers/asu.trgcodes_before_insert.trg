DROP TRIGGER ASU.TRGCODES_BEFORE_INSERT
/

--
-- TRGCODES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TRGCODES (Sequence)
--   TRGCODES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRGCODES_BEFORE_INSERT" 
BEFORE INSERT
ON trgcodes
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TRGCODES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


