DROP FUNCTION ASU.GET_PROCCOUNT
/

--
-- GET_PROCCOUNT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TRESLECH (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PROCCOUNT" (pFK_NAZLECHID IN NUMBER) RETURN NUMBER IS
pCOUNT NUMBER:=1.0;
CURSOR c1(pNAZID NUMBER) IS SELECT /*+RULE*/ COUNT(FK_ID) FROM TRESLECH WHERE FK_NAZID=pNAZID;
BEGIN
  OPEN c1(pFK_NAZLECHID);
  FETCH c1 INTO pCOUNT;
  IF c1%NOTFOUND THEN
    CLOSE c1;
    RETURN 1;
  END IF;
  CLOSE c1;
  RETURN pCOUNT;
END; -- Function GET_PROCCOUNT
/

SHOW ERRORS;


