DROP PROCEDURE ASU.DO_CHANGE_TOWN
/

--
-- DO_CHANGE_TOWN  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TTOWN (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_CHANGE_TOWN" 
   ( pFK_ID IN NUMBER,pFC_NAME IN VARCHAR2)
   IS
BEGIN
  UPDATE TTOWN SET FC_NAME=pFC_NAME WHERE FK_ID=pFK_ID;
END; -- Procedure
/

SHOW ERRORS;


