DROP INDEX ASU.PK_TPRINTEDTL
/

--
-- PK_TPRINTEDTL  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TPRINTEDTL ON ASU.TPRINTEDTL
(FK_PACID)
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


