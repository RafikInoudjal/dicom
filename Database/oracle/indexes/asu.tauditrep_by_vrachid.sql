DROP INDEX ASU.TAUDITREP_BY_VRACHID
/

--
-- TAUDITREP_BY_VRACHID  (Index) 
--
CREATE INDEX ASU.TAUDITREP_BY_VRACHID ON ASU.TAUDITREP
(FK_VRACHID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2432K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


