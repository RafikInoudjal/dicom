DROP FUNCTION ASU.GET_ANAL_RESULT_HTML
/

--
-- GET_ANAL_RESULT_HTML  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMID (Table)
--   GET_ANAL_RESULT_MHTML (Function)
--   GET_ANAL_RESULT_THTML (Function)
--   GET_SMIDFROMNAZ (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_ANAL_RESULT_HTML" (pFK_NAZID IN BINARY_INTEGER)
  RETURN CLOB IS
  --by TimurLan
  CURSOR c(pFK_ID BINARY_INTEGER) IS
    SELECT /*+ first_rows*/FC_TYPE FROM TSMID WHERE FK_ID = pFK_ID;
  cType  TSMID.FC_TYPE%TYPE;
  Result CLOB;
BEGIN
  OPEN c(GET_SMIDFROMNAZ(pFK_NAZID));
  FETCH c INTO cType;
  CLOSE c;

  IF cType = 'TABLE' THEN
    Result := GET_ANAL_RESULT_THTML(pFK_NAZID);
  ELSIF cType = 'MTABLE' THEN
    Result := GET_ANAL_RESULT_MHTML(pFK_NAZID);
  ELSE
    null;-- ������ ����� � �������� ���� ���� �� �����! Result := GET_ANAL_RESULT_SHTML(pFK_NAZID);
  END IF;

  RETURN Result;
END;
/

SHOW ERRORS;


