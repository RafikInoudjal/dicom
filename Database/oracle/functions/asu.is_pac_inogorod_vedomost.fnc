DROP FUNCTION ASU.IS_PAC_INOGOROD_VEDOMOST
/

--
-- IS_PAC_INOGOROD_VEDOMOST  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   PKG_REGIST_PACFUNC (Package)
--   IS_PEPL_INOGOROD_VEDOMOST (Function)
--
CREATE OR REPLACE FUNCTION ASU.IS_PAC_INOGOROD_VEDOMOST (pPaclID NUMBER) RETURN NUMBER IS
  --created by A.Nakorjakov 20032008
  Res NUMBER;
BEGIN
  RETURN ASU.IS_PEPL_INOGOROD_VEDOMOST(asu.pkg_regist_pacfunc.GET_PEPL_ID(pPaclID));
END;
/

SHOW ERRORS;


