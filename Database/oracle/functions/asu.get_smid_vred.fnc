DROP FUNCTION ASU.GET_SMID_VRED
/

--
-- GET_SMID_VRED  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TIB (Table)
--   TSMID (Table)
--   GET_IBEDITVALUE (Function)
--   GET_SYNID (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_SMID_VRED" (pFK_PACID IN NUMBER) RETURN VARCHAR2 IS
  -- created by TimurLan
  CURSOR c
   IS
    SELECT /*+ rule*/ TRIM(GET_IBEDITVALUE(TIB.FK_PACID, TIB.FK_SMEDITID))
      FROM TIB,
           (SELECT FK_ID
              FROM TSMID
             WHERE TSMID.FK_OWNER = GET_SYNID('GET_SMID_VRED')) T
     WHERE TIB.FK_SMID = T.FK_ID AND FK_PACID = pFK_PACID;
  i VARCHAR2(32767);
BEGIN
  OPEN c;
  FETCH c
    INTO i;
  CLOSE c;
  RETURN i;
END;
/

SHOW ERRORS;


