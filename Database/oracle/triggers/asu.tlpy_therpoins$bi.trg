DROP TRIGGER ASU.TLPY_THERPOINS$BI
/

--
-- TLPY_THERPOINS$BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TLPY_THERPOINTS (Sequence)
--   TLPY_THERPOINS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLPY_THERPOINS$BI" 
 BEFORE
  INSERT
 ON tlpy_therpoins
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_TLPY_THERPOINTS
    select SEQ_TLPY_THERPOINTS.NEXTVAL INTO :new.FK_ID from dual;
end;
/
SHOW ERRORS;


