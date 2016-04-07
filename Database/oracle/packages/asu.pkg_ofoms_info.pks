DROP PACKAGE ASU.PKG_OFOMS_INFO
/

--
-- PKG_OFOMS_INFO  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU.PKG_OFOMS_INFO
  IS
 ---------------------------------------------------------------------------------------------------------
  Function GetURL return varchar2;
  --------------------------------------------------------------------------------------------------------
  Function GetLOG return varchar2;
  ---------------------------------------------------------------------------------------------------------
  Function GetPAS return varchar2;
  --------------------------------------------------------------------------------------------------------
  procedure SetURL(Val in varchar2);
  --------------------------------------------------------------------------------------------------------
  procedure SetLOG(Val in varchar2);
  ---------------------------------------------------------------------------------------------------------
  procedure SetPAS(Val in varchar2);
  --------------------------------------------------------------------------------------------------------
END; -- Package Specification PKG_DIAGS
/

SHOW ERRORS;


