DROP INDEX ASU.TAMBTALON_NAZ_BY_TALONID
/

--
-- TAMBTALON_NAZ_BY_TALONID  (Index) 
--
CREATE INDEX ASU.TAMBTALON_NAZ_BY_TALONID ON ASU.TAMBTALON_NAZ
(FK_TALONID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          320K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


