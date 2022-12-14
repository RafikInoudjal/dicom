DROP PACKAGE ASU.PKG_R_PRIL2
/

--
-- PKG_R_PRIL2  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_R_PRIL2" 
 is
 PROCEDURE DO_CALC_REPORT(pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFN_COUNT_MEST OUT NUMBER,
                         pFN_RAZV_MEST OUT NUMBER,pFN_BEGIN OUT NUMBER,pFN_INCOME OUT NUMBER,
                         pFN_INCOME_PMC OUT NUMBER,pFN_INCOME_KONT OUT NUMBER,pFN_OUT OUT NUMBER,
                         pFN_END OUT NUMBER, pFN_KDN OUT NUMBER,pFN_KDN_PMC OUT NUMBER,
                         pFN_KDN_KONT OUT NUMBER,pFN_SUM OUT NUMBER,pFN_SUM_PMC OUT NUMBER,
                         pFN_SUM_KONT OUT NUMBER);
end PKG_R_PRIL2;
/

SHOW ERRORS;


