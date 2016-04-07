DROP TRIGGER ASU.TMULTIMSG_BEFORE_INSERT
/

--
-- TMULTIMSG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TMULTIMSG (Sequence)
--   TMULTIMSG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TMULTIMSG_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON tmultimsg
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_tmultimsg.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

