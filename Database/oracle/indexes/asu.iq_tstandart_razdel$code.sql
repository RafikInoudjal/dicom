DROP INDEX ASU.IQ_TSTANDART_RAZDEL$CODE
/

--
-- IQ_TSTANDART_RAZDEL$CODE  (Index) 
--
CREATE INDEX ASU.IQ_TSTANDART_RAZDEL$CODE ON ASU.TSTANDART_RAZDEL
(CODE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


