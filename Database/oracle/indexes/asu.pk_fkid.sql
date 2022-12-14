DROP INDEX ASU.PK_FKID
/

--
-- PK_FKID  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_FKID ON ASU.TDIAGID
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          240K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


