DROP INDEX ASU.TNAZAN_BY_DATA_PACID
/

--
-- TNAZAN_BY_DATA_PACID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZAN_BY_DATA_PACID ON ASU.TNAZAN
(FK_PACID, FD_RUN, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          6528K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


