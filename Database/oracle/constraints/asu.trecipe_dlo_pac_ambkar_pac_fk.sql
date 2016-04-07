ALTER TABLE ASU.TRECIPE_DLO_PAC_AMBKAR
  DROP CONSTRAINT TRECIPE_DLO_PAC_AMBKAR_PAC_FK
/


-- 
-- Foreign Key Constraints for Table TRECIPE_DLO_PAC_AMBKAR 
-- 
ALTER TABLE ASU.TRECIPE_DLO_PAC_AMBKAR ADD (
  CONSTRAINT TRECIPE_DLO_PAC_AMBKAR_PAC_FK 
 FOREIGN KEY (FK_REGPACID) 
 REFERENCES ASU.TRECIPE_DLO_REG_PAC (FK_ID))
/

