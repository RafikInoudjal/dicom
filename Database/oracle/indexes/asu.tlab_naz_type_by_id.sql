DROP INDEX ASU.TLAB_NAZ_TYPE_BY_ID
/

--
-- TLAB_NAZ_TYPE_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TLAB_NAZ_TYPE_BY_ID ON ASU.TLAB_PCR_NAZ_TYPE
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


