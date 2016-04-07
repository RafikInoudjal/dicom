DROP INDEX ASU.TRESKONS_BY_NAZID
/

--
-- TRESKONS_BY_NAZID  (Index) 
--
CREATE INDEX ASU.TRESKONS_BY_NAZID ON ASU.TRESKONS
(FK_NAZID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1664K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


