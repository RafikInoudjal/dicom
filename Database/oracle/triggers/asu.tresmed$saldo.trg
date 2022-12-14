DROP TRIGGER ASU.TRESMED$SALDO
/

--
-- TRESMED$SALDO  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TRESMED (Table)
--   TRESMEDCONT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRESMED$SALDO" 
AFTER INSERT OR UPDATE OF FD_DATA
ON ASU.TRESMED REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  UPDATE tresmedcont
     SET fn_kol = fn_kol
   WHERE fk_resmedid = :old.fk_id;
END;
/
SHOW ERRORS;


