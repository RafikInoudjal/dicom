DROP INDEX ASU.TNAZTYPE_ID
/

--
-- TNAZTYPE_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZTYPE_ID ON ASU.TNAZTYPE
(FK_ID)
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


