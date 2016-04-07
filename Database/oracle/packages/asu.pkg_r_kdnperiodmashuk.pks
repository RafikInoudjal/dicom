DROP PACKAGE ASU.PKG_R_KDNPERIODMASHUK
/

--
-- PKG_R_KDNPERIODMASHUK  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_KDNPERIODMASHUK" 
 is
 FUNCTION DO_CALC_REPORT (pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_VRACHID IN NUMBER) RETURN NUMBER;
end PKG_R_KDNPERIODMASHUK;
/

SHOW ERRORS;


