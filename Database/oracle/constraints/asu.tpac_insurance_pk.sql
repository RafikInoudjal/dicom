ALTER TABLE ASU.TPAC_INSURANCE
  DROP CONSTRAINT TPAC_INSURANCE_PK
/

-- 
-- Non Foreign Key Constraints for Table TPAC_INSURANCE 
-- 
ALTER TABLE ASU.TPAC_INSURANCE ADD (
  CONSTRAINT TPAC_INSURANCE_PK
 PRIMARY KEY
 (FK_ID))
/

