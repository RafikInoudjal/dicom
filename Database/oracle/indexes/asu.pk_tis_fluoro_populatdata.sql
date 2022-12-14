DROP INDEX ASU.PK_TIS_FLUORO_POPULATDATA
/

--
-- PK_TIS_FLUORO_POPULATDATA  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIS_FLUORO_POPULATDATA ON ASU.TIS_FLUORO_POPULATDATA
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


