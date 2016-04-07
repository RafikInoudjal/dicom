DROP TRIGGER ASU.TEDIT_STATKART_INSERT
/

--
-- TEDIT_STATKART_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TEDIT_STATKART (Sequence)
--   TEDIT_STATKART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEDIT_STATKART_INSERT" 
 BEFORE
  INSERT
 ON ASU.TEDIT_STATKART REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_TEDIT_STATKART.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


