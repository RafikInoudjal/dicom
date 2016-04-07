DROP INDEX ASU.TDIAG_BY_VRACHID
/

--
-- TDIAG_BY_VRACHID  (Index) 
--
CREATE INDEX ASU.TDIAG_BY_VRACHID ON ASU.TDIAG
(FK_VRACHID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


