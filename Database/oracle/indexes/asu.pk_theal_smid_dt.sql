DROP INDEX ASU.PK_THEAL_SMID_DT
/

--
-- PK_THEAL_SMID_DT  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_THEAL_SMID_DT ON ASU.THEAL_SMID_DT
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


