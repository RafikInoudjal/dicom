ALTER TABLE ASU.THL7_PEPL_LOG
  DROP CONSTRAINT THL7_PEPL_LOG_PK
/

-- 
-- Non Foreign Key Constraints for Table THL7_PEPL_LOG 
-- 
ALTER TABLE ASU.THL7_PEPL_LOG ADD (
  CONSTRAINT THL7_PEPL_LOG_PK
 PRIMARY KEY
 (FK_ID))
/

