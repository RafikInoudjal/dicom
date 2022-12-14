DROP INDEX ASU.TSTANDART_CODE
/

--
-- TSTANDART_CODE  (Index) 
--
CREATE INDEX ASU.TSTANDART_CODE ON ASU.TSTANDART
(UPPER("FC_CODE"))
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


