DROP FUNCTION ASU.GET_SUBVIDNAME
/

--
-- GET_SUBVIDNAME  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSUBVID (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_SUBVIDNAME" (pFK_SUBVIDID NUMBER) -- Created by TimurLan
RETURN VARCHAR2
 IS
  CURSOR c IS
    SELECT FC_NAME
      FROM TSUBVID
     WHERE FK_ID = pFK_SUBVIDID;
  cTemp VARCHAR2(30);
BEGIN
  OPEN c;
  FETCH c INTO cTemp;
  CLOSE c;
  RETURN cTemp;
END;
/

SHOW ERRORS;


