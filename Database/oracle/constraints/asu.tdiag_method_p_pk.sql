ALTER TABLE ASU.TDIAG_METHOD_P
  DROP CONSTRAINT TDIAG_METHOD_P_PK
/

-- 
-- Non Foreign Key Constraints for Table TDIAG_METHOD_P 
-- 
ALTER TABLE ASU.TDIAG_METHOD_P ADD (
  CONSTRAINT TDIAG_METHOD_P_PK
 PRIMARY KEY
 (FK_ID))
/

