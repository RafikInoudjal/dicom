DROP INDEX ASU.TVRACHKAB_NAZ_BY_ID
/

--
-- TVRACHKAB_NAZ_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TVRACHKAB_NAZ_BY_ID ON ASU.TVRACHKAB_NAZ
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          280K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


