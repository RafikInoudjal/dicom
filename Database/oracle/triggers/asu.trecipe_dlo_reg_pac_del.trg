DROP TRIGGER ASU.TRECIPE_DLO_REG_PAC_DEL
/

--
-- TRECIPE_DLO_REG_PAC_DEL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TRECIPE_DLO_PAC_ADRPREB (Table)
--   TRECIPE_DLO_PAC_AMBKAR (Table)
--   TRECIPE_DLO_PAC_KAT (Table)
--   TRECIPE_DLO_PAC_SNP (Table)
--   TRECIPE_DLO_PAC_TYPELPU (Table)
--   TRECIPE_DLO_REG_PAC (Table)
--   TRECIPE_DLO_REG_PAC_INFO (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRECIPE_DLO_REG_PAC_DEL"
 BEFORE
  DELETE
 ON ASU.TRECIPE_DLO_REG_PAC REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  delete from asu.TRECIPE_DLO_REG_PAC_INFO t
		where t.FK_REGPACID = :OLD.FK_ID;

  delete from asu.TRECIPE_DLO_PAC_TYPELPU t
		where t.FK_REGPACID = :OLD.FK_ID;

  delete from asu.TRECIPE_DLO_PAC_ADRPREB t
		where t.FK_REGPACID = :OLD.FK_ID;

  delete from asu.TRECIPE_DLO_PAC_AMBKAR t
		where t.FK_REGPACID = :OLD.FK_ID;

  delete from asu.TRECIPE_DLO_PAC_KAT t
		where t.FK_REGPACID = :OLD.FK_ID;

  delete from asu.TRECIPE_DLO_PAC_SNP t
		where t.FK_REGPACID = :OLD.FK_ID;

end;
/
SHOW ERRORS;


