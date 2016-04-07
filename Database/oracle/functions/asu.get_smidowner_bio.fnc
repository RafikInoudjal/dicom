DROP FUNCTION ASU.GET_SMIDOWNER_BIO
/

--
-- GET_SMIDOWNER_BIO  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMID (Table)
--   GET_ANALBIOHIM (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_SMIDOWNER_BIO" (owner IN NUMBER) RETURN NUMBER IS
    pSmidID NUMBER;
  CURSOR c2 IS SELECT FK_OWNER FROM TSMID WHERE FK_ID = owner;
BEGIN
  OPEN c2;
  FETCH c2 INTO pSmidID;
  CLOSE c2;

  IF pSmidID = GET_ANALBIOHIM THEN
    RETURN pSmidID;
  END IF;
  RETURN owner;
END;
/

SHOW ERRORS;


