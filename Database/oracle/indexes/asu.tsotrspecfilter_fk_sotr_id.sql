DROP INDEX ASU.TSOTRSPECFILTER_FK_SOTR_ID
/

--
-- TSOTRSPECFILTER_FK_SOTR_ID  (Index) 
--
CREATE INDEX ASU.TSOTRSPECFILTER_FK_SOTR_ID ON ASU.TSOTRSPECFILTER
(FK_SOTRID)
NOLOGGING
TABLESPACE USR
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


