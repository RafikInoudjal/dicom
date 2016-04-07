DROP INDEX ASU.THOSPITALQUEUE_BY_PEPLID
/

--
-- THOSPITALQUEUE_BY_PEPLID  (Index) 
--
CREATE INDEX ASU.THOSPITALQUEUE_BY_PEPLID ON ASU.THOSPITALQUEUE
(FK_PEPLID)
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


