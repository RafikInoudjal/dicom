DROP FUNCTION ASU.IS_PODPIS
/

--
-- IS_PODPIS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMID (Table)
--   GET_OWNER_FROM_SMID (Function)
--   GET_VIPNAZ (Function)
--   VNAZ (Table)
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE FUNCTION ASU."IS_PODPIS" (pNAZID IN NUMBER, pSMIDID IN NUMBER)
RETURN NUMBER IS
CURSOR cSMID IS SELECT FC_SYNONIM FROM TSMID WHERE FK_ID = GET_OWNER_FROM_SMID(pSMIDID);
CURSOR cRES IS SELECT FK_NAZSOSID FROM VNAZ WHERE FK_ID = pNAZID;
CURSOR cEPIK IS SELECT FL_PODPIS FROM TEPIKRIZ WHERE FK_ID = pNAZID;
res NUMBER;
SYN VARCHAR2(1000);
BEGIN
  OPEN cSMID;
  FETCH cSMID INTO SYN;
  CLOSE cSMID;

  IF SYN = 'EPIKRIZES' THEN
    OPEN cEPIK;
    FETCH cEPIK INTO res;
    CLOSE cEPIK;
    IF res = GET_VIPNAZ THEN
      RETURN 1;
    ELSE
      RETURN 0;
    END IF;
  ELSE
    OPEN cRES;
    FETCH cRES INTO res;
    CLOSE cRES;
    IF res = 1 THEN
      RETURN 1;
    ELSE
      RETURN 0;
    END IF;
  END IF;
END;
/

SHOW ERRORS;


