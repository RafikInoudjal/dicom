ALTER TABLE ASU.TTYPETIMEDIAG
  DROP CONSTRAINT TTYPETIMEDIAG_FK_ID
/

-- 
-- Non Foreign Key Constraints for Table TTYPETIMEDIAG 
-- 
ALTER TABLE ASU.TTYPETIMEDIAG ADD (
  CONSTRAINT TTYPETIMEDIAG_FK_ID
 PRIMARY KEY
 (FK_ID))
/

