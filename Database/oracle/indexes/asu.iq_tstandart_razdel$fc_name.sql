DROP INDEX ASU.IQ_TSTANDART_RAZDEL$FC_NAME
/

--
-- IQ_TSTANDART_RAZDEL$FC_NAME  (Index) 
--
CREATE INDEX ASU.IQ_TSTANDART_RAZDEL$FC_NAME ON ASU.TSTANDART_RAZDEL
(FC_NAME)
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


