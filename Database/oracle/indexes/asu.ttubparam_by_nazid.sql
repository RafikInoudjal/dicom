DROP INDEX ASU.TTUBPARAM_BY_NAZID
/

--
-- TTUBPARAM_BY_NAZID  (Index) 
--
CREATE INDEX ASU.TTUBPARAM_BY_NAZID ON ASU.TTUBPARAM
(FK_NAZID)
NOLOGGING
TABLESPACE INDX
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


