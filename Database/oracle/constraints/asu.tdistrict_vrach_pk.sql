ALTER TABLE ASU.TDISTRICT_VRACH
  DROP CONSTRAINT TDISTRICT_VRACH_PK
/

-- 
-- Non Foreign Key Constraints for Table TDISTRICT_VRACH 
-- 
ALTER TABLE ASU.TDISTRICT_VRACH ADD (
  CONSTRAINT TDISTRICT_VRACH_PK
 PRIMARY KEY
 (FK_ID))
/

