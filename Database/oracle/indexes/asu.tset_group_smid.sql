DROP INDEX ASU.TSET_GROUP_SMID
/

--
-- TSET_GROUP_SMID  (Index) 
--
CREATE INDEX ASU.TSET_GROUP_SMID ON ASU.TSET_GROUP
(FK_SMID)
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


