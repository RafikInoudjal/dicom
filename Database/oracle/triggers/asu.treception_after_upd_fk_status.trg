DROP TRIGGER ASU.TRECEPTION_AFTER_UPD_FK_STATUS
/

--
-- TRECEPTION_AFTER_UPD_FK_STATUS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TRECEPTION (Table)
--   PKG_NAZN (Package)
--
CREATE OR REPLACE TRIGGER ASU."TRECEPTION_AFTER_UPD_FK_STATUS" 
 AFTER
 UPDATE OF FK_STATUS
 ON asu.treception
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  pkg_nazn.add_recept_to_list(:NEW.fk_id);
  RETURN;
END;
/
SHOW ERRORS;


