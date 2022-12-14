DROP FUNCTION ASU.GET_PAC_VRACH_MEEN
/

--
-- GET_PAC_VRACH_MEEN  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TVRACH (Table)
--   GET_PACDAYS_FOR_PERIOD (Function)
--   IS_PAC_LIVE_IN_PERIOD (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_VRACH_MEEN" (pFK_ID IN NUMBER, pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER IS
  CURSOR c IS
    SELECT SUM(GET_PACDAYS_FOR_PERIOD(FK_PACID,pFD_DATA1,pFD_DATA2))
      FROM TVRACH
     WHERE FK_VRACHID = pFK_ID
       AND FL_VID = 'M'
       AND IS_PAC_LIVE_IN_PERIOD (FK_PACID, pFD_DATA1, pFD_DATA2) = 1;

  I NUMBER;
BEGIN
  OPEN c;
  FETCH c INTO i;
  CLOSE c;
  IF i IS NULL  THEN
    i:=0;
  END IF;
  RETURN TRUNC(i/20);
END;-- Function GET_COUNT_PAC_VRACH_PERIOD
/

SHOW ERRORS;


