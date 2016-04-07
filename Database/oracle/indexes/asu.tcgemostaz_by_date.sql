DROP INDEX ASU.TCGEMOSTAZ_BY_DATE
/

--
-- TCGEMOSTAZ_BY_DATE  (Index) 
--
CREATE INDEX ASU.TCGEMOSTAZ_BY_DATE ON ASU.TCGEMOSTAZ
(FD_DATE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


