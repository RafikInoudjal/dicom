DROP TRIGGER ASU.TVRACHKAB_BEFORE_DELETE
/

--
-- TVRACHKAB_BEFORE_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TVRACHKAB (Table)
--   TVRACHKAB_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVRACHKAB_BEFORE_DELETE" 
 BEFORE 
 DELETE
 ON ASU.TVRACHKAB  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  delete from tvrachkab_naz where fk_sotrkabid=:old.fk_id;
end;
/
SHOW ERRORS;


