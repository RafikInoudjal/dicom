DROP INDEX ASU.TSLPERIOFD_PK
/

--
-- TSLPERIOFD_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TSLPERIOFD_PK ON ASU.TSLPERIOD
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


