ALTER TABLE ASU.TRECIPE
  DROP CONSTRAINT TRECIPE_TRECIPEDURATION
/


-- 
-- Foreign Key Constraints for Table TRECIPE 
-- 
ALTER TABLE ASU.TRECIPE ADD (
  CONSTRAINT TRECIPE_TRECIPEDURATION 
 FOREIGN KEY (FK_DURATION) 
 REFERENCES ASU.TRECIPEDURATION (FK_ID))
/

