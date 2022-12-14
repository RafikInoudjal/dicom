DROP TRIGGER ASU.TRASPIS_BEFOR_INSERT
/

--
-- TRASPIS_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TRASPIS (Sequence)
--   TRASPIS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRASPIS_BEFOR_INSERT" 
BEFORE INSERT
ON ASU.TRASPIS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  select SEQ_TRASPIS.nextval, SYSDATE into :new.FK_ID, :new.FD_DATE from dual;
End;
/
SHOW ERRORS;


