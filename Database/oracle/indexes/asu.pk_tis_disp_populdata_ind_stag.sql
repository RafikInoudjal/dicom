DROP INDEX ASU.PK_TIS_DISP_POPULDATA_IND_STAG
/

--
-- PK_TIS_DISP_POPULDATA_IND_STAG  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_POPULDATA_IND_STAG ON ASU.TIS_DISP_POPULDATA_IND_STAGE2
(FK_ID)
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


