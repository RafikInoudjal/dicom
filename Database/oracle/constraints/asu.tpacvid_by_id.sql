ALTER TABLE ASU.TPACVID
  DROP CONSTRAINT TPACVID_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TPACVID 
-- 
ALTER TABLE ASU.TPACVID ADD (
  CONSTRAINT TPACVID_BY_ID
 PRIMARY KEY
 (FK_ID))
/

