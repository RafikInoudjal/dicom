DROP INDEX ASU.TSPEC_PRIOR
/

--
-- TSPEC_PRIOR  (Index) 
--
CREATE INDEX ASU.TSPEC_PRIOR ON ASU.TSPEC
(FK_PRIORID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


