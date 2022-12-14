DROP TRIGGER ASU.TAMBTALON_A_INS
/

--
-- TAMBTALON_A_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TAMBTALON (Table)
--   TEXP_TAMBTALON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_A_INS"
 AFTER INSERT
 ON ASU.TAMBTALON  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  IF :NEW.FN_SOS = 1
  THEN
     INSERT INTO ASU.TEXP_TAMBTALON(FK_TALONID)
     VALUES(:NEW.FK_ID);
  END IF;
End;
/
SHOW ERRORS;


