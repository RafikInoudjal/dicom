ALTER TABLE ASU.TNAZPARAM
  DROP CONSTRAINT TNAZPARAM#PARAM
/


-- 
-- Foreign Key Constraints for Table TNAZPARAM 
-- 
ALTER TABLE ASU.TNAZPARAM ADD (
  CONSTRAINT TNAZPARAM#PARAM 
 FOREIGN KEY (FK_PARAMID) 
 REFERENCES ASU.TLECHPARAM (FK_ID)
    ON DELETE CASCADE)
/

