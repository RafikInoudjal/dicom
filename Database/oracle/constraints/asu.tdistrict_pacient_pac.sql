ALTER TABLE ASU.TDISTRICT_PACIENT
  DROP CONSTRAINT TDISTRICT_PACIENT_PAC
/

-- 
-- Non Foreign Key Constraints for Table TDISTRICT_PACIENT 
-- 
ALTER TABLE ASU.TDISTRICT_PACIENT ADD (
  CONSTRAINT TDISTRICT_PACIENT_PAC
 UNIQUE (FK_AREALID, FK_PEPLID) DISABLE)
/

