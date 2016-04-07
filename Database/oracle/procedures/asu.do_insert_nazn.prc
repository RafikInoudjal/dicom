DROP PROCEDURE ASU.DO_INSERT_NAZN
/

--
-- DO_INSERT_NAZN  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TDIAGNAZ (Table)
--   TSMID (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_NAZN" 
   ( pFK_DIAG IN NUMBER, pFK_SMID IN NUMBER, pFP_TYPE IN NUMBER,pFL_PROTIV IN NUMBER)
   IS
CURSOR CURSMID IS SELECT FK_ID FROM TSMID WHERE FK_OWNER=pFK_SMID;
nTemp NUMBER;
BEGIN
  OPEN CURSMID;
  LOOP
    FETCH CURSMID INTO nTemp;
    EXIT WHEN CURSMID%NOTFOUND;
    INSERT INTO TDIAGNAZ (FK_DIAGSMID,FK_NAZSMID,FP_TYPE,FL_PROTIV) VALUES
                         (pFK_DIAG,nTemp,pFP_TYPE,pFL_PROTIV);
  END LOOP;
END; -- Procedure
/

SHOW ERRORS;


