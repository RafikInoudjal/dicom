DROP INDEX ASU.TPACMONITOR_INDEXES_BY_ID
/

--
-- TPACMONITOR_INDEXES_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TPACMONITOR_INDEXES_BY_ID ON ASU.TPACMONITOR_INDEXES
(FK_ID)
NOLOGGING
TABLESPACE INDX
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


