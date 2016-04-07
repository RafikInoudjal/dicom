DROP TRIGGER ASU.TKART_ARCHIV_BEFORE_INSERT
/

--
-- TKART_ARCHIV_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKART_ARCHIV (Sequence)
--   TKART_ARCHIV (Table)
--
CREATE OR REPLACE TRIGGER ASU."TKART_ARCHIV_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TKART_ARCHIV  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TKART_ARCHIV.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


