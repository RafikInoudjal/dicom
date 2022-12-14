DROP PACKAGE ASU.PKG_SMID
/

--
-- PKG_SMID  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_SMID" IS
  PROCEDURE DO_REARRANGE_ROWS (pFK_OWNER IN NUMBER, pFN_REQNUM IN NUMBER, pFL_RESERVE IN NUMBER);
  PROCEDURE DO_SET_ROW_NUM (pFK_ID IN NUMBER, pFN_REQNUM IN NUMBER);
  PROCEDURE WRITE_ANAL (pFK_ID IN NUMBER, pFK_OWNER IN NUMBER, pFC_NAME IN VARCHAR2, pFC_ED_IZM IN VARCHAR2, pFC_SYNONIM IN VARCHAR2, pFN_ORDER IN NUMBER, pFC_TYPE IN VARCHAR2, pFN_LOW_M IN VARCHAR2,
    pFN_HI_M IN VARCHAR2, pFN_LOW_W IN VARCHAR2, pFN_HI_W IN VARCHAR2, pFL_SHOWANAL IN NUMBER, pFP_PAT IN NUMBER, pFC_TIME IN NUMBER, pFK_DEFAULT IN NUMBER, pFK_CLASS IN NUMBER,
    pFK_LOINC_CODE IN NUMBER, pFN_COST1 IN VARCHAR2, pFN_COST2 IN VARCHAR2, pFN_COST3 IN VARCHAR2, pFP_INOUT IN NUMBER, pFL_STAT IN NUMBER, pFC_SHORT IN VARCHAR2, pFN_ED IN NUMBER,
    pFC_ANSWER IN VARCHAR2, pFP_BOLD IN NUMBER DEFAULT 0);
  PROCEDURE DELETE_VALUE (pFK_ID IN NUMBER);
  PROCEDURE ADD_ROOTVALUE (pFC_NAME IN VARCHAR2, pFC_SYNONYM IN VARCHAR2, pFK_OWNER IN NUMBER := 0);
  PROCEDURE SET_SYNONYM (pFK_ID IN NUMBER, pFC_SYNONYM IN VARCHAR2);
  PROCEDURE DO_WRITE_DIAG (pFK_ID IN NUMBER, pFK_OWNER IN NUMBER, pFC_NAME IN VARCHAR2, pFK_DEFAULT IN NUMBER, pFN_ORDER IN NUMBER, pFP_PAT IN NUMBER, pFL_SHOWANAL IN NUMBER, pFK_MKB9 IN VARCHAR2,
    pFK_MKB10 IN VARCHAR2, pFC_SYNONYM IN VARCHAR2, pFC_ANSWER IN VARCHAR2);
  FUNCTION MAKE_DIAGS_LIST RETURN NUMBER;
  PROCEDURE DO_MOVE_COPY_LEVEL (pFK_ID IN NUMBER, pFK_NEWOWNER IN NUMBER, pFL_MOVE IN NUMBER);
  PROCEDURE DO_WRITE_NORM(pFK_ID IN NUMBER,pFK_SMID IN NUMBER,pFN_YEAR1 IN NUMBER,pFN_YEAR2 IN NUMBER,pFN_LOW_M IN NUMBER,pFN_HI_M IN NUMBER,pFN_LOW_W IN NUMBER,pFN_HI_W IN NUMBER);
  PROCEDURE DO_DELETE_NORM(pFK_ID IN NUMBER);
  function get_edchild(pFK_ID in number) return number;
  function get_ed(pFK_ID in number) return number;

  FUNCTION get_bold(pfk_id IN NUMBER) RETURN NUMBER;
  PROCEDURE set_bold(pfk_id IN NUMBER, pfp_bold NUMBER);

  function GetRootLevelID(p_FK_ID in Integer) return integer;
  PRAGMA restrict_references(GetRootLevelID,WNDS,WNPS);

  function GetRootLevelName(p_FK_ID in Integer) return Varchar;
  PRAGMA restrict_references(GetRootLevelName,WNDS,WNPS);
  function GetRootLevelID1(p_FK_ID in Integer) return integer;
  PRAGMA restrict_references(GetRootLevelID1,WNDS,WNPS);
  function GetRootLevelName1(p_FK_ID in Integer) return VARCHAR2;
  function GetRootLevelSyn(p_FK_ID in Integer) return VARCHAR2;
  PRAGMA restrict_references(GetRootLevelName1,WNDS,WNPS);
  FUNCTION Get_ShortValuesStrig(p_FK_SMID IN INTEGER, p_String_OF_NUM VARCHAR) RETURN VARCHAR;

  FUNCTION get_path_showprint (p_fk_smid IN INTEGER)
  RETURN VARCHAR;
  PRAGMA restrict_references(get_path_showprint,WNDS,WNPS);
END;-- Package Specification PKG_SMID
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.PKG_SMID TO LAB
/

