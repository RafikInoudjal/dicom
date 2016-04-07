DROP TRIGGER ASU.TNAZAPPARATS_BEFORE_INSERT
/

--
-- TNAZAPPARATS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TNAZAPPARATS (Sequence)
--   TNAZAPPARATS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZAPPARATS_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.tnazapparats
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_tnazapparats.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


