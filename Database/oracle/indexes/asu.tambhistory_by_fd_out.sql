DROP INDEX ASU.TAMBHISTORY_BY_FD_OUT
/

--
-- TAMBHISTORY_BY_FD_OUT  (Index) 
--
CREATE INDEX ASU.TAMBHISTORY_BY_FD_OUT ON ASU.TDOCHISTORY
(FD_OUT)
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


