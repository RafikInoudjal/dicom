DROP INDEX ASU.TVAC_SICNESS$FK_INFECTION
/

--
-- TVAC_SICNESS$FK_INFECTION  (Index) 
--
CREATE INDEX ASU.TVAC_SICNESS$FK_INFECTION ON ASU.TVAC_SICNESS
(FK_INFECTION)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


