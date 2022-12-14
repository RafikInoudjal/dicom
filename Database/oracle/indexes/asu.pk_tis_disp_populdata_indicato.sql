DROP INDEX ASU.PK_TIS_DISP_POPULDATA_INDICATO
/

--
-- PK_TIS_DISP_POPULDATA_INDICATO  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_POPULDATA_INDICATO ON ASU.TIS_DISP_POPULDATA_INDICATOR
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


