DROP INDEX ASU.TPERESEL_INTERIM_FD_DATA1
/

--
-- TPERESEL_INTERIM_FD_DATA1  (Index) 
--
CREATE INDEX ASU.TPERESEL_INTERIM_FD_DATA1 ON ASU.TPERESEL_INTERIM
(FD_DATA1)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


