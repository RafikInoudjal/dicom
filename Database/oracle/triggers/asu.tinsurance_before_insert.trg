DROP TRIGGER ASU.TINSURANCE_BEFORE_INSERT
/

--
-- TINSURANCE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TINSURANCE (Sequence)
--   TINSURANCE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSURANCE_BEFORE_INSERT" 
BEFORE INSERT
ON tinsurance
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TINSURANCE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


