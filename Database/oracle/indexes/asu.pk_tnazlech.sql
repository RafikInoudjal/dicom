DROP INDEX ASU.PK_TNAZLECH
/

--
-- PK_TNAZLECH  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TNAZLECH ON ASU.TNAZLECH
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2176K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


