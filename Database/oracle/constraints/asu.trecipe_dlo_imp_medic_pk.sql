ALTER TABLE ASU.TRECIPE_DLO_IMP_MEDIC
  DROP CONSTRAINT TRECIPE_DLO_IMP_MEDIC_PK
/

-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_IMP_MEDIC 
-- 
ALTER TABLE ASU.TRECIPE_DLO_IMP_MEDIC ADD (
  CONSTRAINT TRECIPE_DLO_IMP_MEDIC_PK
 PRIMARY KEY
 (FK_ID))
/

