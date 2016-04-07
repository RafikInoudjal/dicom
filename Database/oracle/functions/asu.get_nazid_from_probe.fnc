DROP FUNCTION ASU.GET_NAZID_FROM_PROBE
/

--
-- GET_NAZID_FROM_PROBE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TLABREG (Table)
--   GET_SMIDFROMNAZ (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_NAZID_FROM_PROBE" 
  ( pFN_PROBE IN NUMBER,pFK_SMID IN NUMBER,pFD_REGIST IN DATE)
  RETURN  NUMBER IS
--
-- Purpose: ��������� ��� ���������� �� ������ �����
--
  CURSOR c IS SELECT FK_NAZID FROM TLABREG WHERE FN_PROBE=pFN_PROBE AND FD_REGIST=pFD_REGIST AND GET_SMIDFROMNAZ(FK_NAZID)=pFK_SMID;
  i NUMBER;
BEGIN
  IF c%ISOPEN THEN
    CLOSE C;
  END IF;
  OPEN C;
  FETCH C INTO i;
  CLOSE C;
  RETURN i;
END;
/

SHOW ERRORS;


