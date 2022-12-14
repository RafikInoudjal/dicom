DROP PROCEDURE ASU.SET_PACHRAP
/

--
-- SET_PACHRAP  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TANAMNEZ (Table)
--
CREATE OR REPLACE PROCEDURE ASU."SET_PACHRAP" 
(pFK_ID IN NUMBER, pFL_HRAP IN NUMBER)
   IS
BEGIN
  UPDATE TANAMNEZ SET FL_HRAP=pFL_HRAP WHERE FK_PACID=pFK_ID;
END; -- Procedure
/

SHOW ERRORS;


