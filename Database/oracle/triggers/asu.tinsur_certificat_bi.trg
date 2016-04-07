DROP TRIGGER ASU.TINSUR_CERTIFICAT_BI
/

--
-- TINSUR_CERTIFICAT_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_INSUR_CERTIFICAT (Sequence)
--   TINSUR_CERTIFICAT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSUR_CERTIFICAT_BI" 
 BEFORE
 insert
 ON ASU.TINSUR_CERTIFICAT  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  select ASU.SEQ_INSUR_CERTIFICAT.nextval into :new.FK_ID from DUAL;
end;
/
SHOW ERRORS;


