DROP FUNCTION ASU.GET_PACADRESS
/

--
-- GET_PACADRESS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   GET_COUNTRY (Function)
--   GET_REGION (Function)
--   GET_TOWN (Function)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PACADRESS" 
  ( pFK_ID IN NUMBER)
  RETURN  VARCHAR2 IS
  strTemp VARCHAR2(300);
  CURSOR cTemp IS SELECT /*+ rule*/GET_COUNTRY(FK_COUNTRYID)||' '||GET_REGION(FK_REGIONID)||' '||GET_TOWN(FK_TOWNID)||' '||FC_ADR FROM TKARTA WHERE FK_ID=pFK_ID;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO strTemp;
  CLOSE cTemp;
  RETURN strTemp;
END;
/

SHOW ERRORS;

