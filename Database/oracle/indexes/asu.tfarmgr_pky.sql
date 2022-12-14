DROP INDEX ASU.TFARMGR_PKY
/

--
-- TFARMGR_PKY  (Index) 
--
CREATE UNIQUE INDEX ASU.TFARMGR_PKY ON ASU.TFARMGR
(FK_ID)
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


