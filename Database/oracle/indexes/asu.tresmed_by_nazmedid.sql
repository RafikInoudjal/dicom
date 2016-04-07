DROP INDEX ASU.TRESMED_BY_NAZMEDID
/

--
-- TRESMED_BY_NAZMEDID  (Index) 
--
CREATE INDEX ASU.TRESMED_BY_NAZMEDID ON ASU.TRESMED
(FK_NAZMEDID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


