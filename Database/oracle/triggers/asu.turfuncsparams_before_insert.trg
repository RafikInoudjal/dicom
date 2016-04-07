DROP TRIGGER ASU.TURFUNCSPARAMS_BEFORE_INSERT
/

--
-- TURFUNCSPARAMS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TURFUNCSPARAMS (Sequence)
--   TURFUNCSPARAMS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TURFUNCSPARAMS_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TURFUNCSPARAMS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TURFUNCSPARAMS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


