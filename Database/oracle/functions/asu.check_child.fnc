DROP FUNCTION ASU.CHECK_CHILD
/

--
-- CHECK_CHILD  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   CHILD_AGE (Function)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."CHECK_CHILD"
       (pFK_PACID   IN NUMBER)
  RETURN BOOLEAN
  IS

  P_IsChild BOOLEAN := FALSE;
  p_Age     NUMERIC;
BEGIN
  SELECT MONTHS_BETWEEN(SYSDATE, NVL(FD_ROJD, SYSDATE))/12
  INTO p_Age
  FROM ASU.TKARTA
  WHERE FK_ID = pFK_PACID;

  IF ASU.CHILD_AGE() > p_Age
  THEN
     p_IsChild := TRUE;
  END IF;

  Return p_IsChild;
END;
/

SHOW ERRORS;


