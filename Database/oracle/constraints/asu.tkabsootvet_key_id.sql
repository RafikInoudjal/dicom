ALTER TABLE ASU.TKABSOOTVET
  DROP CONSTRAINT TKABSOOTVET_KEY_ID
/

-- 
-- Non Foreign Key Constraints for Table TKABSOOTVET 
-- 
ALTER TABLE ASU.TKABSOOTVET ADD (
  CONSTRAINT TKABSOOTVET_KEY_ID
 PRIMARY KEY
 (FK_ID))
/

