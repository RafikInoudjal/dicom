DROP PROCEDURE ASU.DO_INSERT_TIB
/

--
-- DO_INSERT_TIB  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TIB (Table)
--   TSMID (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_TIB"
   (pFK_PACID         IN NUMBER,
    pFC_SYNONIM       IN VARCHAR2)
    IS
BEGIN
    INSERT INTO ASU.TIB(FK_PACID, FK_SMID)
    VALUES(pFK_PACID, (SELECT NVL(FK_ID, 0) as FK_ID FROM ASU.TSMID WHERE (fl_del <> 1 or fl_del is null) and FC_SYNONIM = pFC_SYNONIM));
END "DO_INSERT_TIB";
/

SHOW ERRORS;


