ALTER TABLE ASU.TDISTRICT_PACIENT
  DROP CONSTRAINT TDISTRICT_PACIENT_PK
/

-- 
-- Non Foreign Key Constraints for Table TDISTRICT_PACIENT 
-- 
ALTER TABLE ASU.TDISTRICT_PACIENT ADD (
  CONSTRAINT TDISTRICT_PACIENT_PK
 PRIMARY KEY
 (FK_ID))
/

