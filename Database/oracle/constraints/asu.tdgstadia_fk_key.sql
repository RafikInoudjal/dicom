ALTER TABLE ASU.TDISPGROUPSTADIA
  DROP CONSTRAINT TDGSTADIA_FK_KEY
/

-- 
-- Non Foreign Key Constraints for Table TDISPGROUPSTADIA 
-- 
ALTER TABLE ASU.TDISPGROUPSTADIA ADD (
  CONSTRAINT TDGSTADIA_FK_KEY
 PRIMARY KEY
 (FK_ID))
/

