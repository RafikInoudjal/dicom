DROP PACKAGE ASU.PKG_R_INCOMEVITIAZ
/

--
-- PKG_R_INCOMEVITIAZ  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_INCOMEVITIAZ" 
 is
 FUNCTION DO_CALC_REPORT(pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_VRACHID IN NUMBER) RETURN NUMBER;
end PKG_R_INCOMEVITIAZ;
/

SHOW ERRORS;


