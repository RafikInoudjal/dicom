DROP INDEX ASU.WEB_TIMESTAMP_BY_TFR
/

--
-- WEB_TIMESTAMP_BY_TFR  (Index) 
--
CREATE UNIQUE INDEX ASU.WEB_TIMESTAMP_BY_TFR ON ASU.WEB_TIMESTAMP_LOG
(TIMESTAMP, FUNCTIONNAME, TIMERESULT)
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


