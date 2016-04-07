DROP PROCEDURE ASU.DO_SETPOKAZ
/

--
-- DO_SETPOKAZ  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TKARTA (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_SETPOKAZ" 
   ( pFK_PACID IN NUMBER,pFL_POKAZ IN NUMBER)
   IS
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  UPDATE TKARTA SET FL_POKAZ=pFL_POKAZ WHERE FK_ID=pFK_PACID;
  COMMIT;
END; -- Procedure DO_SETPOKAZ
/

SHOW ERRORS;


