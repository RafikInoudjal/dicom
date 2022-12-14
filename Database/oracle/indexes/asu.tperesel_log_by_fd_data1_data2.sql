DROP INDEX ASU.TPERESEL_LOG_BY_FD_DATA1_DATA2
/

--
-- TPERESEL_LOG_BY_FD_DATA1_DATA2  (Index) 
--
CREATE INDEX ASU.TPERESEL_LOG_BY_FD_DATA1_DATA2 ON ASU.TPERESEL_LOG
(FD_DATA1, FD_DATA2)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1664K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


