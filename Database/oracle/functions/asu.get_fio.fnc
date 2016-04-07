DROP FUNCTION ASU.GET_FIO
/

--
-- GET_FIO  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TAMBULANCE (Table)
--   TKARTA (Table)
--   VARCHARISNULL (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_FIO" (pFK_ID IN NUMBER)
  RETURN VARCHAR2
IS
  strTemp   VARCHAR2(200);

  CURSOR cTemp
  IS
    SELECT FC_FAM || ' ' || DECODE (VarcharIsNUll (fc_im), 1, '', SUBSTR (FC_IM, 0, 1) || '. ' || DECODE (VarcharIsNUll (fc_otch), 1, '', SUBSTR (FC_OTCH, 0, 1) || '. '))
      FROM TKARTA
     WHERE FK_ID = pFK_ID
    UNION
         SELECT FC_FAM || ' ' || DECODE (VarcharIsNUll (fc_im), 1, '', SUBSTR (FC_IM, 0, 1) || '. ' || DECODE (VarcharIsNUll (fc_otch), 1, '', SUBSTR (FC_OTCH, 0, 1) || '. '))
           FROM TAMBULANCE
          WHERE FK_ID = pFK_ID;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO strTemp;
  CLOSE cTemp;
  RETURN strTemp;
END;
/

SHOW ERRORS;


