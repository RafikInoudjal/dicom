ALTER TABLE ASU.TPROC_CNT_PER_DAY
  DROP CONSTRAINT TPROC_CNT_PER_DAY_BY_SMID
/

-- 
-- Non Foreign Key Constraints for Table TPROC_CNT_PER_DAY 
-- 
ALTER TABLE ASU.TPROC_CNT_PER_DAY ADD (
  CONSTRAINT TPROC_CNT_PER_DAY_BY_SMID
 PRIMARY KEY
 (FK_SMID))
/

