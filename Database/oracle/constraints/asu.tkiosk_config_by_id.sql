ALTER TABLE ASU.TKIOSK_CONFIG
  DROP CONSTRAINT TKIOSK_CONFIG_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TKIOSK_CONFIG 
-- 
ALTER TABLE ASU.TKIOSK_CONFIG ADD (
  CONSTRAINT TKIOSK_CONFIG_BY_ID
 PRIMARY KEY
 (FK_ID))
/

