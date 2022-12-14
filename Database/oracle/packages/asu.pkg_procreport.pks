DROP PACKAGE ASU.PKG_PROCREPORT
/

--
-- PKG_PROCREPORT  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_PROCREPORT" IS
  PROCEDURE DO_CREATETREEFROMTNAZVRACH;
  PROCEDURE DO_DELETETREE(pID IN NUMBER);
  PROCEDURE DO_COPYTREE(pSrcID IN NUMBER, pDestID IN NUMBER);
  FUNCTION GET_PREVIEW(pChilds IN NUMBER) RETURN CLOB;

  PROCEDURE GET_PIPENAMES(pProgressName OUT VARCHAR2, pProgressCancel OUT VARCHAR2);
  FUNCTION GET_REPORT(pDates IN VARCHAR2, pChilds IN NUMBER, pDaysOnly IN NUMBER) RETURN CLOB;
  FUNCTION GET_REPORT_UET(pDates IN VARCHAR2, pChilds IN NUMBER, pDaysOnly IN NUMBER) RETURN CLOB;

  FUNCTION GET_PROGRESSMAX(pProgressName IN VARCHAR2) RETURN NUMBER;
  FUNCTION GET_PROGRESSPOS(pProgressName IN VARCHAR2) RETURN NUMBER;
  PROCEDURE CANCEL_REPORT(pProgressCancel IN VARCHAR2);
END;
/

SHOW ERRORS;


