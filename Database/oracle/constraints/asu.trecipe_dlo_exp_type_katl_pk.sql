ALTER TABLE ASU.TRECIPE_DLO_EXP_KATL
  DROP CONSTRAINT TRECIPE_DLO_EXP_TYPE_KATL_PK
/

-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_EXP_KATL 
-- 
ALTER TABLE ASU.TRECIPE_DLO_EXP_KATL ADD (
  CONSTRAINT TRECIPE_DLO_EXP_TYPE_KATL_PK
 PRIMARY KEY
 (FK_ID))
/

