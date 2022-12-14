DROP INDEX ASU.TICD10$FC_KOD
/

--
-- TICD10$FC_KOD  (Index) 
--
CREATE INDEX ASU.TICD10$FC_KOD ON ASU.TICD10
(FC_KOD)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


