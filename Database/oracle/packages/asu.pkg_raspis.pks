DROP PACKAGE ASU.PKG_RASPIS
/

--
-- PKG_RASPIS  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_RASPIS" 
  IS
-- MODIFICATION HISTORY
-- Roman M. Mikita      26.10.2000    Create

Procedure     DO_CREATERASPIS ( nFK_NAZVRACHID IN NUMBER, dFD_DATE IN DATE, nDAYCOUNT IN NUMBER);
Procedure     DO_INSERT_PACLST (nFK_ID IN NUMBER, nPACID IN NUMBER);
Procedure     DO_INSERT_RASPIS ( nFK_NAZVRACHID IN NUMBER, dDATE IN DATE);

END; -- Package Specification PKG_RASPIS
/

SHOW ERRORS;


