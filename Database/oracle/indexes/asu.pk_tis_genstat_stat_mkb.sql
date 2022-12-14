DROP INDEX ASU.PK_TIS_GENSTAT_STAT_MKB
/

--
-- PK_TIS_GENSTAT_STAT_MKB  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIS_GENSTAT_STAT_MKB ON ASU.TIS_GENSTAT_STAT_MKB
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


