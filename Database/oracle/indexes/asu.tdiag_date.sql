DROP INDEX ASU.TDIAG_DATE
/

--
-- TDIAG_DATE  (Index) 
--
CREATE INDEX ASU.TDIAG_DATE ON ASU.TDIAG
(FD_DATE)
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


