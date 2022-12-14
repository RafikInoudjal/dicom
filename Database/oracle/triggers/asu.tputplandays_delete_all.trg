DROP TRIGGER ASU.TPUTPLANDAYS_DELETE_ALL
/

--
-- TPUTPLANDAYS_DELETE_ALL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TPUTPLANDATA (Table)
--   TPUTPLANDAYS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPUTPLANDAYS_DELETE_ALL" 
AFTER DELETE
ON ASU.TPUTPLANDAYS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
 Delete from TPUTPLANDATA where FK_DAYSID=:OLD.FK_ID;
end;
/
SHOW ERRORS;


