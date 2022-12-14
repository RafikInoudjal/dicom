DROP INDEX ASU.TDISPG_FK_OWNER
/

--
-- TDISPG_FK_OWNER  (Index) 
--
CREATE INDEX ASU.TDISPG_FK_OWNER ON ASU.TDISPGROUP
(FK_OWNER)
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


