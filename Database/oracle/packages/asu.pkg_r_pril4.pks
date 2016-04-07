DROP PACKAGE ASU.PKG_R_PRIL4
/

--
-- PKG_R_PRIL4  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_PRIL4" 
 is
 FUNCTION DO_CALC_REPORT (pFN_YEAR IN VARCHAR2, pFK_VRACHID IN NUMBER) RETURN NUMBER;
end PKG_R_PRIL4;
/

SHOW ERRORS;


