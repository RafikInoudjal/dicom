DROP TRIGGER ASU.TPRIOR_BEFORE_INSERT
/

--
-- TPRIOR_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPRIOR (Sequence)
--   TPRIOR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPRIOR_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TPRIOR   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TPRIOR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


