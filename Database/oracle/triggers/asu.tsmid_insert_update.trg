DROP TRIGGER ASU.TSMID_INSERT_UPDATE
/

--
-- TSMID_INSERT_UPDATE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TSMID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSMID_INSERT_UPDATE" 
 BEFORE 
 INSERT OR UPDATE
 ON ASU.TSMID  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  :new.fc_synonim := upper (:new.fc_synonim);
END;
/
SHOW ERRORS;


