ALTER TABLE ASU.TCALL_DOC
  DROP CONSTRAINT TCALL_DOC_PK
/

-- 
-- Non Foreign Key Constraints for Table TCALL_DOC 
-- 
ALTER TABLE ASU.TCALL_DOC ADD (
  CONSTRAINT TCALL_DOC_PK
 PRIMARY KEY
 (FK_ID))
/

