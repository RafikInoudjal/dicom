ALTER TABLE ASU.TLOG
  DROP CONSTRAINT TLOG_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TLOG 
-- 
ALTER TABLE ASU.TLOG ADD (
  CONSTRAINT TLOG_BY_ID
 PRIMARY KEY
 (FK_ID))
/

