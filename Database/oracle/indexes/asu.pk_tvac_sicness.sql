DROP INDEX ASU.PK_TVAC_SICNESS
/

--
-- PK_TVAC_SICNESS  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVAC_SICNESS ON ASU.TVAC_SICNESS
(FK_ID)
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


