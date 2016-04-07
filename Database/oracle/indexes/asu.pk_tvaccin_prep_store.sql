DROP INDEX ASU.PK_TVACCIN_PREP_STORE
/

--
-- PK_TVACCIN_PREP_STORE  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVACCIN_PREP_STORE ON ASU.TVACCIN_PREP_STORE
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


