DROP TRIGGER ASU.TVAC_TEST_RESULT_BEFORE_INSERT
/

--
-- TVAC_TEST_RESULT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_VAC_TEST_RESULT (Sequence)
--   TVAC_TEST_RESULT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_TEST_RESULT_BEFORE_INSERT" BEFORE INSERT
ON ASU.TVAC_TEST_RESULT FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_VAC_TEST_RESULT
      IF :NEW.FK_ID IS NULL
      THEN
         SELECT SEQ_VAC_TEST_RESULT.NEXTVAL INTO :NEW.FK_ID from dual;
      END IF;
end;
/
SHOW ERRORS;


