DROP INDEX ASU.PK_PERESEL_INFO
/

--
-- PK_PERESEL_INFO  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_PERESEL_INFO ON ASU.TPERESEL_INFO
(FK_PERESEL, FL_IN_INTERIM)
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


