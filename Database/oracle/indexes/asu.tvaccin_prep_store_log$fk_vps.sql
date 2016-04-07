DROP INDEX ASU.TVACCIN_PREP_STORE_LOG$FK_VPS
/

--
-- TVACCIN_PREP_STORE_LOG$FK_VPS  (Index) 
--
CREATE INDEX ASU.TVACCIN_PREP_STORE_LOG$FK_VPS ON ASU.TVACCIN_PREP_STORE_LOG
(FK_VACCIN_PREP_STORE)
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


