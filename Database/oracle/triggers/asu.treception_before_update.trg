DROP TRIGGER ASU.TRECEPTION_BEFORE_UPDATE
/

--
-- TRECEPTION_BEFORE_UPDATE  (Trigger) 
--
--  Dependencies: 
--   TRECEPTION (Table)
--   PKG_NAZN (Package)
--
CREATE OR REPLACE TRIGGER ASU."TRECEPTION_BEFORE_UPDATE" 
 BEFORE
  UPDATE
 ON asu.treception
REFERENCING NEW AS NEW OLD AS OLD
BEGIN
  PKG_NAZN.init_recept_table;
END;
/
SHOW ERRORS;


