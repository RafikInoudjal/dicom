DROP TRIGGER ASU.TLABLOT_ACCUM_BEFOR_INSERT
/

--
-- TLABLOT_ACCUM_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TLABLOT_ACCUM (Table)
--   SEQ_LAB_ACCUMULATE (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TLABLOT_ACCUM_BEFOR_INSERT" 
 BEFORE
 INSERT
 ON ASU.TLABLOT_ACCUM  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_LAB_ACCUMULATE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


