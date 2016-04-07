DROP TRIGGER ASU.TIBDEFEKT_DELETE
/

--
-- TIBDEFEKT_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TIBDEFEKT (Table)
--   TCLOBS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TIBDEFEKT_DELETE" 
AFTER INSERT
ON ASU.TIBDEFEKT REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  delete from tclobs where fk_id = :old.fk_clobid;
End;
/
SHOW ERRORS;


