ALTER TABLE ASU.TFARMGR
  DROP CONSTRAINT TFARMGR_PKY
/

-- 
-- Non Foreign Key Constraints for Table TFARMGR 
-- 
ALTER TABLE ASU.TFARMGR ADD (
  CONSTRAINT TFARMGR_PKY
 PRIMARY KEY
 (FK_ID))
/

