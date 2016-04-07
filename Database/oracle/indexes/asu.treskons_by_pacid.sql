DROP INDEX ASU.TRESKONS_BY_PACID
/

--
-- TRESKONS_BY_PACID  (Index) 
--
CREATE INDEX ASU.TRESKONS_BY_PACID ON ASU.TRESKONS
(FK_PACID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1280K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


