DROP TRIGGER ASU.TLAB_LOT_BEFORE_INSERT
/

--
-- TLAB_LOT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TLABLOT_PARAM (Table)
--   SEQ_LAB_ACCUMULATE (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TLAB_LOT_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON asu.TLABLOT_PARAM
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
    SELECT SEQ_LAB_ACCUMULATE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


