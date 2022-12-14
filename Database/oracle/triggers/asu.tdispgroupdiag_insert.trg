DROP TRIGGER ASU.TDISPGROUPDIAG_INSERT
/

--
-- TDISPGROUPDIAG_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDISPGROUPDIAGS (Sequence)
--   TDISPGROUPDIAG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDISPGROUPDIAG_INSERT" 
  BEFORE INSERT
  ON ASU.TDISPGROUPDIAG   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TDISPGROUPDIAGS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


