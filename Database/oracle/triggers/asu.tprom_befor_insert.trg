DROP TRIGGER ASU.TPROM_BEFOR_INSERT
/

--
-- TPROM_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPROM (Sequence)
--   TPROM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPROM_BEFOR_INSERT" 
  BEFORE INSERT
  ON ASU.TPROM   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TPROM.NEXTVAL into :new.FK_ID from dual;
End;
/
SHOW ERRORS;


