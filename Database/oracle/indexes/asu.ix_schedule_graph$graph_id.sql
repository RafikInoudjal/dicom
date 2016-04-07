DROP INDEX ASU.IX_SCHEDULE_GRAPH$GRAPH_ID
/

--
-- IX_SCHEDULE_GRAPH$GRAPH_ID  (Index) 
--
CREATE INDEX ASU.IX_SCHEDULE_GRAPH$GRAPH_ID ON ASU.WEB_SCHEDULE_GRAPH
(GRAPH_ID)
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


