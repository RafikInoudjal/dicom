DROP PROCEDURE ASU.DO_INSERT_TNAZIS
/

--
-- DO_INSERT_TNAZIS  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TNAZIS (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_TNAZIS" 
(pSMID in NUMBER, pDRUN in DATE, pKABINETID in NUMBER, pVRACHID in NUMBER, pISPOLID in NUMBER,
 pNAZSOSID in NUMBER, pPACID in NUMBER, pPLAT in NUMBER, pTYPE in varchar2, pFK_ID in out NUMBER, pFL_INS in NUMBER)
IS
BEGIN
  insert into tnazis(fk_smid, fd_naz, fd_run, FK_ROOMID, fk_vrachid, fk_ispolid, fk_nazsosid, fk_pacid, fl_plat, fc_type, fl_ins)
         values (pSMID, SYSDATE, pDRUN, pKABINETID, pVRACHID, pISPOLID, pNAZSOSID, pPACID, pPLAT, pTYPE, pFL_INS)
  returning fk_id into pFK_ID;
END;
/

SHOW ERRORS;


