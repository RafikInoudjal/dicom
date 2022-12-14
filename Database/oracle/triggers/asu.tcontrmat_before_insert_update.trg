DROP TRIGGER ASU.TCONTRMAT_BEFORE_INSERT_UPDATE
/

--
-- TCONTRMAT_BEFORE_INSERT_UPDATE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TCONTRMAT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCONTRMAT_BEFORE_INSERT_UPDATE" 
BEFORE  INSERT  ON ASU.TCONTRMAT FOR EACH ROW
Begin
  :NEW.FN_XM:=(:NEW.FN_X1+:NEW.FN_X2)/2;
  :NEW.FN_SD:=(:NEW.FN_X2-:NEW.FN_X1)/4;
End;
/
SHOW ERRORS;


