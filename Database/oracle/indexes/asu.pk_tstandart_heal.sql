DROP INDEX ASU.PK_TSTANDART_HEAL
/

--
-- PK_TSTANDART_HEAL  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TSTANDART_HEAL ON ASU.TSTANDART_HEAL
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          800K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


