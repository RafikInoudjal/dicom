DROP PACKAGE ASU.PKG_DAILY_BUH
/

--
-- PKG_DAILY_BUH  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_DAILY_BUH" 
  IS
FUNCTION DO_CALC_REPORT(pFD_DATA IN DATE,pFC_REMARK IN VARCHAR2,pFK_VRACHID IN NUMBER) RETURN NUMBER;
END; -- Package Specification PKG_DAILY_BUH
/

SHOW ERRORS;


