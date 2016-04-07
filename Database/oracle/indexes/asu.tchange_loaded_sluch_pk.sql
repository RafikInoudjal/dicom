DROP INDEX ASU.TCHANGE_LOADED_SLUCH_PK
/

--
-- TCHANGE_LOADED_SLUCH_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TCHANGE_LOADED_SLUCH_PK ON ASU.TCHANGE_LOADED_SLUCH
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


