ALTER TABLE ASU.TRECIPE_DLO_IMP_OST
  DROP CONSTRAINT TRECIPE_DLO_IMP_OST_PK
/

-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_IMP_OST 
-- 
ALTER TABLE ASU.TRECIPE_DLO_IMP_OST ADD (
  CONSTRAINT TRECIPE_DLO_IMP_OST_PK
 PRIMARY KEY
 (FK_ID))
/

