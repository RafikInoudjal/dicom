ALTER TABLE ASU.TTEMPLISTPIC
  DROP CONSTRAINT TTEMPLISTPIC_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TTEMPLISTPIC 
-- 
ALTER TABLE ASU.TTEMPLISTPIC ADD (
  CONSTRAINT TTEMPLISTPIC_BY_ID
 PRIMARY KEY
 (FK_ID))
/

