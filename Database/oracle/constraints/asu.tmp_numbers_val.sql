ALTER TABLE ASU.TMP_NUMBERS
  DROP CONSTRAINT TMP_NUMBERS_VAL
/

-- 
-- Non Foreign Key Constraints for Table TMP_NUMBERS 
-- 
ALTER TABLE ASU.TMP_NUMBERS ADD (
  CONSTRAINT TMP_NUMBERS_VAL
 PRIMARY KEY
 (FN_VALUE))
/

