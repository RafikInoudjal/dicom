DROP PROCEDURE ASU.DO_INSERT_TOWN
/

--
-- DO_INSERT_TOWN  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TTOWN (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_TOWN" 
   ( FC_TEXT IN VARCHAR2)
   IS
BEGIN
  INSERT INTO TTOWN(FK_ID,FC_NAME) VALUES(1,FC_TEXT);
END; -- Procedure
/

SHOW ERRORS;


