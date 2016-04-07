ALTER TABLE ASU.TVAC_PLAN_PATTERN
  DROP CONSTRAINT TVAC_PLAN_PATTERN$CONDITION
/


-- 
-- Foreign Key Constraints for Table TVAC_PLAN_PATTERN 
-- 
ALTER TABLE ASU.TVAC_PLAN_PATTERN ADD (
  CONSTRAINT TVAC_PLAN_PATTERN$CONDITION 
 FOREIGN KEY (FK_CONDITION) 
 REFERENCES ASU.TVAC_PLAN_CONDITION (FK_ID))
/

