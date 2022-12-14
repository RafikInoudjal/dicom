DROP TRIGGER ASU.TCONTRMAT_BEFORE_INSERT
/

--
-- TCONTRMAT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TCONTRMAT (Sequence)
--   TCONTRMAT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCONTRMAT_BEFORE_INSERT" 
BEFORE  INSERT  ON ASU.TCONTRMAT FOR EACH ROW
Begin
  SELECT SEQ_TCONTRMAT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


