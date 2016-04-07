DROP TRIGGER ASU.TAPRIH$DEL
/

--
-- TAPRIH$DEL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TAPRIH (Table)
--   TAPRIHCONT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAPRIH$DEL" 
AFTER DELETE
ON ASU.TAPRIH REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  DELETE
    FROM taprihcont
   WHERE fk_aprihid = :old.fk_id;
END;
/
SHOW ERRORS;


