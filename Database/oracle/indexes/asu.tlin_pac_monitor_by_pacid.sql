DROP INDEX ASU.TLIN_PAC_MONITOR_BY_PACID
/

--
-- TLIN_PAC_MONITOR_BY_PACID  (Index) 
--
CREATE INDEX ASU.TLIN_PAC_MONITOR_BY_PACID ON ASU.TLIN_PAC_MONITOR
(FK_PACID)
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


