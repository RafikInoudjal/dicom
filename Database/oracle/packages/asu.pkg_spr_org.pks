DROP PACKAGE ASU.PKG_SPR_ORG
/

--
-- PKG_SPR_ORG  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_SPR_ORG" IS
  PROCEDURE DO_DELETE_COMPANY (pFK_ID IN NUMBER);
  PROCEDURE DO_DELETE_BANK (pFK_ID IN NUMBER);
  PROCEDURE GET_COMPANY (pFK_ID IN OUT NUMBER, pFC_NAME OUT VARCHAR2, pFC_SHORT OUT VARCHAR2, pFK_COUNTRYID OUT NUMBER, pFK_REGIONID OUT NUMBER, pFK_TOWNID OUT NUMBER, pFC_ADR OUT VARCHAR2,
    pFC_pFAX OUT VARCHAR2, pFC_TEL OUT VARCHAR2, pFC_OKONH OUT VARCHAR2, pFC_OKPO OUT VARCHAR2, pFC_INN OUT VARCHAR2
  );
  PROCEDURE DO_WRITE_COMPANY (pFK_ID IN NUMBER, pFC_NAME IN VARCHAR2, pFC_SHORT IN VARCHAR2, pFK_COUNTRYID IN NUMBER, pFK_REGIONID IN NUMBER, pFK_TOWNID IN NUMBER, pFC_ADR IN VARCHAR2,
    pFC_FAX IN VARCHAR2, pFC_TEL IN VARCHAR2, pFC_OKONH IN VARCHAR2, pFC_OKPO IN VARCHAR2, pFC_INN IN VARCHAR2
  );
  PROCEDURE DO_WRITE_BANK (pFK_ID IN NUMBER, pFK_COMPANYID IN NUMBER, pFC_NAME IN VARCHAR2, pFC_SHORT IN VARCHAR2, pFK_COUNTRYID IN NUMBER, pFK_REGIONID IN NUMBER, pFK_TOWNID IN NUMBER,
    pFC_ADR IN VARCHAR2, pFC_BIK IN VARCHAR2, pFC_OKONH IN VARCHAR2, pFC_OKPO IN VARCHAR2, pFC_INN IN VARCHAR2, pFC_RS IN VARCHAR2, pFC_KS IN VARCHAR2
  );
END;                                                                                                                                                                -- Package Specification PKG_SPR_ORG
/

SHOW ERRORS;


