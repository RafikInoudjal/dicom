DROP PROCEDURE ASU.DO_CHANGE_COUNTRY
/

--
-- DO_CHANGE_COUNTRY  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TCOUNTRY (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_CHANGE_COUNTRY" 
   ( pFK_ID IN NUMBER,pFC_NAME IN VARCHAR2)
   IS
BEGIN
  UPDATE TCOUNTRY SET FC_NAME=pFC_NAME WHERE FK_ID=pFK_ID;
END; -- Procedure
/

SHOW ERRORS;


