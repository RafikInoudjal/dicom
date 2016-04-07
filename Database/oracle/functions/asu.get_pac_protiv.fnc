DROP FUNCTION ASU.GET_PAC_PROTIV
/

--
-- GET_PAC_PROTIV  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TAMBULANCE (Table)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_PROTIV" (pFK_ID IN NUMBER) RETURN NUMBER IS
-- LastUpdated : 01.12.2003 by TimurLan
  CURSOR c(pID IN NUMBER) IS
    SELECT FL_POKAZ FROM TKARTA WHERE FK_ID = pID
     UNION
    SELECT FL_POKAZ FROM TAMBULANCE WHERE FK_ID = pID;
  i NUMBER;
BEGIN
  OPEN c(pFK_ID);
  FETCH c
    INTO i;
  CLOSE c;
  RETURN i;
END;
/

SHOW ERRORS;

