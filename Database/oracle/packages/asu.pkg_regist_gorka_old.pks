DROP PACKAGE ASU.PKG_REGIST_GORKA_OLD
/

--
-- PKG_REGIST_GORKA_OLD  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_REGIST_GORKA_OLD" 
  IS-- Created by TimurLan
  FUNCTION IN_BUH_FROM_STOL(pFD_DATA IN DATE,pFK_VRACHID IN NUMBER) RETURN NUMBER;
  FUNCTION IN_BUH_FROM_STOL_K(pFD_DATA IN DATE,pFK_VRACHID IN NUMBER, pFK_KORPID IN NUMBER) RETURN NUMBER; --by korpus mother fucka!
  FUNCTION GET_FUCK(pID IN NUMBER) RETURN DATE;
END;
/

SHOW ERRORS;


