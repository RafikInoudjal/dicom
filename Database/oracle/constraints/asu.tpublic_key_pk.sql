ALTER TABLE ASU.TPUBLIC_KEY
  DROP CONSTRAINT TPUBLIC_KEY_PK
/

-- 
-- Non Foreign Key Constraints for Table TPUBLIC_KEY 
-- 
ALTER TABLE ASU.TPUBLIC_KEY ADD (
  CONSTRAINT TPUBLIC_KEY_PK
 PRIMARY KEY
 (FK_ID))
/

