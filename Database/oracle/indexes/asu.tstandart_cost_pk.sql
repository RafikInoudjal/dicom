DROP INDEX ASU.TSTANDART_COST_PK
/

--
-- TSTANDART_COST_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TSTANDART_COST_PK ON ASU.TSTANDART_COST
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


