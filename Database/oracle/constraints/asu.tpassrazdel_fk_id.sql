ALTER TABLE ASU.TPASSRAZDEL
  DROP CONSTRAINT TPASSRAZDEL_FK_ID
/

-- 
-- Non Foreign Key Constraints for Table TPASSRAZDEL 
-- 
ALTER TABLE ASU.TPASSRAZDEL ADD (
  CONSTRAINT TPASSRAZDEL_FK_ID
 PRIMARY KEY
 (FK_ID))
/

