DROP FUNCTION ASU.GET_KDN_PERIOD_PRIZN_SHORT
/

--
-- GET_KDN_PERIOD_PRIZN_SHORT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   GET_KDN_PRIZN_SHORT (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_KDN_PERIOD_PRIZN_SHORT" 
  ( pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_PRIZNID IN NUMBER)
  RETURN  NUMBER IS
  i NUMBER;
  s NUMBER;
BEGIN
  S:=0;
  FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
    S:=S+GET_KDN_PRIZN_SHORT(pFD_DATA1+i,pFK_PRIZNID);
  END LOOP;
  RETURN S;
END;
/

SHOW ERRORS;


