DROP FUNCTION ASU.IS_DIAG_MONEY
/

--
-- IS_DIAG_MONEY  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSTANDART (Table)
--   TSTANDART_ICD10 (Table)
--   TSTANDART_RAZDEL (Table)
--   TICD10 (Table)
--   GET_CURRENT_STANDGROUP (Function)
--   GET_HONORARY_STANDRAZD (Function)
--
CREATE OR REPLACE FUNCTION ASU."IS_DIAG_MONEY" (pFC_KOD IN VARCHAR2)
RETURN NUMBER IS
CURSOR cMONEY IS SELECT I.FK_ID --, S.FK_ID standid, SI.FK_ID standicdid, I.FC_NAME, I.FC_KOD, S.FC_NAME SNAME
            FROM TSTANDART S,
                 TSTANDART_RAZDEL R,
                 TSTANDART_ICD10 SI,
                 TICD10 I
           WHERE S.FK_RAZDEL = R.FK_ID
             AND R.FK_ID = GET_HONORARY_STANDRAZD
             AND I.FK_ID = SI.FK_ICD10
             AND S.FK_ID = SI.FK_STANDART
             AND S.FK_GROUPID = GET_CURRENT_STANDGROUP
             AND I.FC_KOD = pFC_KOD;
ID NUMBER;
BEGIN
  OPEN cMONEY;
  FETCH cMONEY INTO ID;
  CLOSE cMONEY;

  IF ID IS NOT NULL THEN
    RETURN 0;
  ELSE
    RETURN 1;
  END IF;
END;
/

SHOW ERRORS;


