DROP INDEX ASU.TEXPAN_BY_ID
/

--
-- TEXPAN_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TEXPAN_BY_ID ON ASU.TEXPAN
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          35712K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


