DROP TRIGGER ASU.TQC_MLEVELPASPORT$BI
/

--
-- TQC_MLEVELPASPORT$BI  (Trigger) 
--
--  Dependencies: 
--   TQC_MLEVELPASPORT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQC_MLEVELPASPORT$BI" 
 BEFORE
  INSERT
 ON asu.tqc_mlevelpasport
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_TQC_MLEVELPASPORT
    select SEQ_TQC_MLEVELPASPORT.NEXTVAL INTO :NEW.FK_ID from DUAL;
end
/
SHOW ERRORS;


