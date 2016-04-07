ALTER TABLE ASU.TRECIPE_DLO_IMP
  DROP CONSTRAINT TRECIPE_DLO_IMP_RECIPEGIUD_IDX
/

-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_IMP 
-- 
ALTER TABLE ASU.TRECIPE_DLO_IMP ADD (
  CONSTRAINT TRECIPE_DLO_IMP_RECIPEGIUD_IDX
 UNIQUE (RECIPEGUID))
/

