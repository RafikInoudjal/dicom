DROP INDEX ASU.PK_TINSUROBOSNOV
/

--
-- PK_TINSUROBOSNOV  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TINSUROBOSNOV ON ASU.TINSUROBOSNOV
(FK_ID)
NOLOGGING
TABLESPACE USR
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


