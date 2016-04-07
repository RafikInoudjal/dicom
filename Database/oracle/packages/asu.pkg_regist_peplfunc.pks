DROP PACKAGE ASU.PKG_REGIST_PEPLFUNC
/

--
-- PKG_REGIST_PEPLFUNC  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TPEOPLES (Table)
--
CREATE OR REPLACE PACKAGE ASU."PKG_REGIST_PEPLFUNC" IS
  FUNCTION ADD_VALUE(pFC_TARGET  IN VARCHAR2,
                     pFC_VALUE   IN VARCHAR2,
                     pFC_KEYWORD IN VARCHAR) RETURN VARCHAR2;
  FUNCTION REPLACE_SPACES(pFC_VALUE IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION GET_PEPL_ID(pFK_PACID IN BINARY_INTEGER) RETURN BINARY_INTEGER;
  FUNCTION GET_PEPL_FIO(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_PEPL_FULLFIO(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_PEPL_ADRID(pFK_PEPLID IN BINARY_INTEGER,
                          pFK_TYPE   IN BINARY_INTEGER DEFAULT -1)
    RETURN BINARY_INTEGER;
  FUNCTION GET_PEPL_ADRSHORT(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_PEPL_ADRFULL(pFK_PEPLID IN BINARY_INTEGER,
                            pFK_TYPE   IN BINARY_INTEGER DEFAULT -1)
    RETURN VARCHAR2;
  FUNCTION GET_PEPL_WORKPLACE(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_PEPL_SEXID(pFK_PEPLID IN BINARY_INTEGER) RETURN BINARY_INTEGER;
  FUNCTION GET_PEPL_SEX(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_PEPL_SEXLITER(pFK_VARID IN BINARY_INTEGER,
                             pFN_VALUE IN BINARY_INTEGER DEFAULT 1)
    RETURN CHAR;
  -- if pFN_VALUE = 1 then pFK_VARID means FK_PEPLID else FK_GROUPID !!!
  FUNCTION GET_PEPL_AGE_NOW(pFK_PEPLID IN BINARY_INTEGER)
    RETURN BINARY_INTEGER;
  FUNCTION GET_PEPL_AGE_DATE(pFK_PEPLID IN BINARY_INTEGER,
                             pFD_DATE   IN DATE) RETURN BINARY_INTEGER;
  FUNCTION GET_PEPL_AGE_MONTH(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;

  FUNCTION GET_PEPL_FCGROUP(pFK_VARID IN BINARY_INTEGER,
                            pFN_VALUE IN BINARY_INTEGER DEFAULT 0)
    RETURN VARCHAR2;
  -- if pFN_VALUE = 1 then pFK_VARID means FK_PEPLID else FK_GROUPID !!!
  FUNCTION GET_PEPL_INSURANCE(pFK_PEPLID IN BINARY_INTEGER) RETURN VARCHAR2;
  -- Added by Spasskiy S.N. 05.10.2009
  -- ���������� ����� ��������
  FUNCTION GET_PEPL_SNILS(pFK_PEPLID IN BINARY_INTEGER)
    RETURN ASU.TPEOPLES.FC_SNILS%TYPE;
    
  function GET_PEPL_DOCUMENTUDOVLICHN(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOCPOL(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_INVALIDNOST(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_PERSONALDATASOGLASIE(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_PHONES(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_FIOFULL(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_FIO(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_SEX(pFK_PEPLID IN BINARY_INTEGER) return integer;
  function GET_PEPL_SOPR_BIRTHDAY(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_DOCUMENT(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_SNILS(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_REGADDRESS(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_PHONE(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SOPR_POLNOMOCHDOC(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_BITH (pFK_PEPLID IN BINARY_INTEGER) return DATE;
  function GET_PEPL_INSURANCE_OMS_INFO(pFK_PEPLID IN BINARY_INTEGER, pFL_ALL IN NUMBER := 0) return varchar2;
  function GET_PEPL_LGOTKATEGORY(pFK_PEPLID IN BINARY_INTEGER) return varchar2;
  function GET_PEPL_SEMPOL(pFK_PEPLID IN BINARY_INTEGER) return VARCHAR2;
  
END PKG_REGIST_PEPLFUNC;
/

SHOW ERRORS;


