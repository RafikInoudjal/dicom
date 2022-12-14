DROP TRIGGER ASU.TASKREPLYGROUP_INSERT
/

--
-- TASKREPLYGROUP_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TASKREPLYGROUP (Sequence)
--   TASKREPLYGROUP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TASKREPLYGROUP_INSERT" 
 BEFORE
  INSERT
 ON ASU.TASKREPLYGROUP REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT asu.SEQ_TASKREPLYGROUP.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


