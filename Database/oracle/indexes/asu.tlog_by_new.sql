DROP INDEX ASU.TLOG_BY_NEW
/

--
-- TLOG_BY_NEW  (Index) 
--
CREATE INDEX ASU.TLOG_BY_NEW ON ASU.TLOG
(FC_NEW)
NOLOGGING
TABLESPACE LOG_INDX
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


