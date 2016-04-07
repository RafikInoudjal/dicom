DROP TRIGGER ASU.TDISPGROUPNAZLIST_AGE_INSERT
/

--
-- TDISPGROUPNAZLIST_AGE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDISPGROUPNAZLIST_AGE (Sequence)
--   TDISPGROUPNAZLIST_AGE (Table)
--
CREATE OR REPLACE TRIGGER ASU.TDISPGROUPNAZLIST_AGE_INSERT
  BEFORE INSERT
  ON ASU.TDISPGROUPNAZLIST_AGE   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TDISPGROUPNAZLIST_AGE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


