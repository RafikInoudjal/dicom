ALTER TABLE ASU.TKLADR
  DROP CONSTRAINT TKLADR_PK
/

-- 
-- Non Foreign Key Constraints for Table TKLADR 
-- 
ALTER TABLE ASU.TKLADR ADD (
  CONSTRAINT TKLADR_PK
 PRIMARY KEY
 (FK_ID))
/

