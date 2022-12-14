DROP FUNCTION ASU.CHECK_CHILD_DATE
/

--
-- CHECK_CHILD_DATE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   CHILD_AGE (Function)
--
CREATE OR REPLACE FUNCTION ASU."CHECK_CHILD_DATE"
       (pRM_DATE   IN DATE)
  RETURN BOOLEAN
  IS

  P_IsChild BOOLEAN := FALSE;
  p_Age     NUMERIC;
BEGIN
  SELECT MONTHS_BETWEEN(SYSDATE, NVL(pRM_DATE, SYSDATE))/12
  INTO p_Age
  FROM DUAL;

  IF ASU.CHILD_AGE() > p_Age
  THEN
     p_IsChild := TRUE;
  END IF;

  Return p_IsChild;
END;
/

SHOW ERRORS;


