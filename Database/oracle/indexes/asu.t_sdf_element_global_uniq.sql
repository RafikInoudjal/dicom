DROP INDEX ASU.T_SDF_ELEMENT_GLOBAL_UNIQ
/

--
-- T_SDF_ELEMENT_GLOBAL_UNIQ  (Index) 
--
CREATE UNIQUE INDEX ASU.T_SDF_ELEMENT_GLOBAL_UNIQ ON ASU.T_SDF_ELEMENT
(FK_GLOBALID)
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

