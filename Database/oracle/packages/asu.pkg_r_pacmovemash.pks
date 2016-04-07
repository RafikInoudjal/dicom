DROP PACKAGE ASU.PKG_R_PACMOVEMASH
/

--
-- PKG_R_PACMOVEMASH  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_PACMOVEMASH" 
 is
 FUNCTION DO_CALC_REPORT (pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_VRACHID IN NUMBER) RETURN NUMBER;
end PKG_R_PACMOVEMASH;
/

SHOW ERRORS;


