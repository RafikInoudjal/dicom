DROP INDEX ASU.PK_BUNKS
/

--
-- PK_BUNKS  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_BUNKS ON ASU.TBUNKS
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


