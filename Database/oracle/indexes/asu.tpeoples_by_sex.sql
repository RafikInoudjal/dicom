DROP INDEX ASU.TPEOPLES_BY_SEX
/

--
-- TPEOPLES_BY_SEX  (Index) 
--
CREATE INDEX ASU.TPEOPLES_BY_SEX ON ASU.TPEOPLES
(FK_ID, FP_SEX)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          6272K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


