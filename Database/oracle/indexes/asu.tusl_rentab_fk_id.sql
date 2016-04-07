DROP INDEX ASU.TUSL_RENTAB_FK_ID
/

--
-- TUSL_RENTAB_FK_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TUSL_RENTAB_FK_ID ON ASU.TUSL_RENTAB
(FK_ID)
NOLOGGING
TABLESPACE INDX
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

