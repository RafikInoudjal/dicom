DROP INDEX ASU.TAMBTALON_BY_SOS_TRCLOSE
/

--
-- TAMBTALON_BY_SOS_TRCLOSE  (Index) 
--
CREATE INDEX ASU.TAMBTALON_BY_SOS_TRCLOSE ON ASU.TAMBTALON
(FN_SOS, TRUNC("FD_CLOSED"))
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


