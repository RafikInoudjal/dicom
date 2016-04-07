DROP INDEX ASU.THEAL_SOGAZ_CODE_BY_ID
/

--
-- THEAL_SOGAZ_CODE_BY_ID  (Index) 
--
CREATE INDEX ASU.THEAL_SOGAZ_CODE_BY_ID ON ASU.THEAL_SOGAZ_CODE
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


