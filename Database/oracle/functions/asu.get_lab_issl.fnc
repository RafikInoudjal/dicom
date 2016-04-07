DROP FUNCTION ASU.GET_LAB_ISSL
/

--
-- GET_LAB_ISSL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMID (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_LAB_ISSL" (pFK_ID IN BINARY_INTEGER)
  RETURN BINARY_INTEGER IS
  --mod by TimurLan
  CURSOR c IS
    SELECT FK_ID
      FROM TSMID
     WHERE FL_SHOWANAL = 2
       --AND FK_ID <> GET_ANALID
     START WITH FK_ID = pFK_ID
    CONNECT BY PRIOR FK_OWNER = FK_ID
     ORDER BY LEVEL;--ROWNUM DESC;
  res BINARY_INTEGER;
BEGIN
  open c;
  fetch c into res;
  close c;
  Return res;
END;
/

SHOW ERRORS;


