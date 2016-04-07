DROP INDEX ASU.PK_TSTANDART_TIPROOM
/

--
-- PK_TSTANDART_TIPROOM  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TSTANDART_TIPROOM ON ASU.TSTANDART_TIPROOM
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          448K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


