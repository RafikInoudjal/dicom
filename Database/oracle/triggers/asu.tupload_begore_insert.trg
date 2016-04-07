DROP TRIGGER ASU.TUPLOAD_BEGORE_INSERT
/

--
-- TUPLOAD_BEGORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TUPLOAD (Sequence)
--   TUPLOAD (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUPLOAD_BEGORE_INSERT" 
  BEFORE INSERT ON ASU.TUPLOAD 
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TUPLOAD.NEXTVAL INTO :NEW.FK_ID FROM DUAL;

END TUPLOAD_BEGORE_INSERT;
/
SHOW ERRORS;


