ALTER TABLE ASU.TPATH_TO_KAB
  DROP CONSTRAINT TPATH_TO_KAB_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TPATH_TO_KAB 
-- 
ALTER TABLE ASU.TPATH_TO_KAB ADD (
  CONSTRAINT TPATH_TO_KAB_BY_ID
 PRIMARY KEY
 (FK_ID))
/

