DROP TRIGGER ASU.TLABSORT_BEFORE_INSERT
/

--
-- TLABSORT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TLABSORT (Sequence)
--   TLABSORT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLABSORT_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TLABSORT  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_TLABSORT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


