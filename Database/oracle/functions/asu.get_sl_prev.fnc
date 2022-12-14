DROP FUNCTION ASU.GET_SL_PREV
/

--
-- GET_SL_PREV  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSLFORM (Table)
--   TSLINFO (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_SL_PREV" (pFK_SLOWNERID IN NUMBER) RETURN VARCHAR2 IS
  -- created by Serg
  CURSOR c
   IS
    SELECT F.FC_SERIES ||' '||F.FC_NUMBER SER_NUM_PRES
    FROM TSLFORM F,
         TSLINFO I
    WHERE F.FK_ID = I.FK_SLFORMID
    AND I.FK_ID = pFK_SLOWNERID;

  D VARCHAR2(32767);

BEGIN
 OPEN C;
 FETCH C INTO D;
 CLOSE C;
 RETURN D;
END;
/

SHOW ERRORS;


