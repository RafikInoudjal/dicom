DROP INDEX ASU.TNAZIS_BY_DATA_PACID
/

--
-- TNAZIS_BY_DATA_PACID  (Index) 
--
CREATE INDEX ASU.TNAZIS_BY_DATA_PACID ON ASU.TNAZIS
(FK_PACID, FD_RUN, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2176K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


