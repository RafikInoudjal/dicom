ALTER TABLE ASU.TRECIPE_DLO_IMP_REQ_MEDIC
  DROP CONSTRAINT TREC_DLO_IMP_REQ_MED_REQID_FK
/


-- 
-- Foreign Key Constraints for Table TRECIPE_DLO_IMP_REQ_MEDIC 
-- 
ALTER TABLE ASU.TRECIPE_DLO_IMP_REQ_MEDIC ADD (
  CONSTRAINT TREC_DLO_IMP_REQ_MED_REQID_FK 
 FOREIGN KEY (FK_UNIQCODE) 
 REFERENCES ASU.TRECIPE_DLO_IMP_REQ (UNIQCODE))
/

