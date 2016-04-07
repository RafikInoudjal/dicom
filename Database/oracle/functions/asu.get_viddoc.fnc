DROP FUNCTION ASU.GET_VIDDOC
/

--
-- GET_VIDDOC  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TAMBULANCE (Table)
--   TDOCOBSL (Table)
--   TPERESEL (Table)
--   TUSLVID (Table)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_VIDDOC" (pPacid IN NUMBER) RETURN VARCHAR2 IS
 -- Created  20070125 by Serg
 -- Modified 20071227 by Linnikov
 -- ������� ���������� ������������ ���������

 sTmp VARCHAR2(32767);

BEGIN
 SELECT MAX(U.FC_NAME)
   INTO sTmp
   FROM TUSLVID U, TDOCOBSL D, TAMBULANCE A
  WHERE U.FK_ID = D.FK_VIDDOCID
    AND A.FK_DOCOBSL = D.FK_ID
    AND A.FK_ID = NVL(pPacid, 0);
 IF sTmp IS NULL THEN
  SELECT MAX(U.FC_NAME)
    INTO sTmp
    FROM TUSLVID U, TDOCOBSL D, TKARTA K, TPERESEL P
   WHERE U.FK_ID = D.FK_VIDDOCID
     AND K.FK_ID = P.FK_PACID
     AND P.FK_ID = (SELECT MAX(FK_ID) FROM TPERESEL WHERE P.FK_PACID = pPacid) -- Added 20071227 by Linnikov
     AND P.FK_DOCOBSLID = D.FK_ID
     AND K.FK_ID = NVL(pPacid, 0);
 END IF;
 RETURN sTmp;
END;
/

SHOW ERRORS;


