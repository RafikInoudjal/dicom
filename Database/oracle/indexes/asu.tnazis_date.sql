DROP INDEX ASU.TNAZIS_DATE
/

--
-- TNAZIS_DATE  (Index) 
--
CREATE INDEX ASU.TNAZIS_DATE ON ASU.TNAZIS
(FD_RUN)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1536K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


