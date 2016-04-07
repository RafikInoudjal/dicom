DROP INDEX ASU.IDX_TTOWN_SYNC
/

--
-- IDX_TTOWN_SYNC  (Index) 
--
CREATE INDEX ASU.IDX_TTOWN_SYNC ON ASU.TTOWN
(FC_NAME)
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

