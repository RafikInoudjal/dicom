ALTER TABLE ASU.TDIGITAL_SIGNATURE
  DROP CONSTRAINT TDIGITAL_SIGNATURE_PK
/

-- 
-- Non Foreign Key Constraints for Table TDIGITAL_SIGNATURE 
-- 
ALTER TABLE ASU.TDIGITAL_SIGNATURE ADD (
  CONSTRAINT TDIGITAL_SIGNATURE_PK
 PRIMARY KEY
 (FK_ID))
/

