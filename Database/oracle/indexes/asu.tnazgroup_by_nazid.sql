DROP INDEX ASU.TNAZGROUP_BY_NAZID
/

--
-- TNAZGROUP_BY_NAZID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZGROUP_BY_NAZID ON ASU.TNAZGROUP
(FK_NAZID)
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


