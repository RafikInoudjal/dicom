DROP INDEX ASU.IQ_THEAL$CODE
/

--
-- IQ_THEAL$CODE  (Index) 
--
CREATE INDEX ASU.IQ_THEAL$CODE ON ASU.THEAL
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


