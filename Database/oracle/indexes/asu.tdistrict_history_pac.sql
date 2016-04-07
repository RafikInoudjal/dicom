DROP INDEX ASU.TDISTRICT_HISTORY_PAC
/

--
-- TDISTRICT_HISTORY_PAC  (Index) 
--
CREATE INDEX ASU.TDISTRICT_HISTORY_PAC ON ASU.TDISTRICT_HISTORY
(FK_PEPLID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


