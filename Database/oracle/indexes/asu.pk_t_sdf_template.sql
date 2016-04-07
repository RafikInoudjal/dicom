DROP INDEX ASU.PK_T_SDF_TEMPLATE
/

--
-- PK_T_SDF_TEMPLATE  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_T_SDF_TEMPLATE ON ASU.T_SDF_TEMPLATE
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


