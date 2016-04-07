DROP FUNCTION ASU.GET_SUM_PERIOD_VID
/

--
-- GET_SUM_PERIOD_VID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   IS_PAC_LIVE_IN_PERIOD (Function)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_SUM_PERIOD_VID" 
  ( pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_KOD2 IN NUMBER)
  RETURN  NUMBER IS
  CURSOR c IS SELECT SUM(FN_SUM) FROM TKARTA WHERE IS_PAC_LIVE_IN_PERIOD(FK_ID,pFD_DATA1,pFD_DATA2)>0 AND FK_KOD2=pFK_KOD2;
  I NUMBER;
BEGIN
  IF c%ISOPEN THEN
    CLOSE C;
  END IF;
  OPEN C;
  FETCH C INTO I;
  CLOSE C;
  RETURN I;
END;
/

SHOW ERRORS;


