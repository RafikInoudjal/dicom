DROP FUNCTION ASU.GET_KDNV_PERIOD_SUBVID
/

--
-- GET_KDNV_PERIOD_SUBVID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   GET_KDNV_SUBVID (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_KDNV_PERIOD_SUBVID" 
  ( pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_PRIZNID IN NUMBER,pFK_KOD IN NUMBER)
  RETURN  NUMBER IS
  i NUMBER;
  s NUMBER;
BEGIN
  S:=0;
  FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
    S:=S+GET_KDNV_SUBVID(pFD_DATA1+i,pFK_PRIZNID,pFK_KOD);
  END LOOP;
  RETURN S;
END;
/

SHOW ERRORS;


