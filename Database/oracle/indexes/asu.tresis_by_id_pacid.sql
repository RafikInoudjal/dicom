DROP INDEX ASU.TRESIS_BY_ID_PACID
/

--
-- TRESIS_BY_ID_PACID  (Index) 
--
CREATE INDEX ASU.TRESIS_BY_ID_PACID ON ASU.TRESIS
(FK_ID, FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          896K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


