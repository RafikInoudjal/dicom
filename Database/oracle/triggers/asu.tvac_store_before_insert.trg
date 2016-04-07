DROP TRIGGER ASU.TVAC_STORE_BEFORE_INSERT
/

--
-- TVAC_STORE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_VAC_STORE (Sequence)
--   TVAC_STORE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_STORE_BEFORE_INSERT" BEFORE INSERT
ON ASU.TVAC_STORE FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_VAC_STORE
      IF :NEW.FK_ID IS NULL
      THEN
         SELECT SEQ_VAC_STORE.NEXTVAL INTO :NEW.FK_ID from dual;
      END IF;
end;
/
SHOW ERRORS;


