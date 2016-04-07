DROP INDEX ASU.TANTROP_BY_ID
/

--
-- TANTROP_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TANTROP_BY_ID ON ASU.TANTROP
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


