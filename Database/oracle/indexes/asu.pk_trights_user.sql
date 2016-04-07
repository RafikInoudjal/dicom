DROP INDEX ASU.PK_TRIGHTS_USER
/

--
-- PK_TRIGHTS_USER  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TRIGHTS_USER ON ASU.TRIGHTS_USER
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


