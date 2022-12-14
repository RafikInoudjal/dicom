DROP TRIGGER ASU.TPAYER_BEFORE_INSERT
/

--
-- TPAYER_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPAYER (Sequence)
--   TPAYER (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPAYER_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TPAYER  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TPAYER.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


