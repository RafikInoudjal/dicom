DROP INDEX ASU.TAMBTALON_NAZ_BY_AMBID
/

--
-- TAMBTALON_NAZ_BY_AMBID  (Index) 
--
CREATE INDEX ASU.TAMBTALON_NAZ_BY_AMBID ON ASU.TAMBTALON_NAZ
(FK_AMBID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


