DROP INDEX ASU.TUPLOAD_BY_ID
/

--
-- TUPLOAD_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TUPLOAD_BY_ID ON ASU.TUPLOAD
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


