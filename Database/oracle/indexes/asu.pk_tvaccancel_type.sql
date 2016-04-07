DROP INDEX ASU.PK_TVACCANCEL_TYPE
/

--
-- PK_TVACCANCEL_TYPE  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVACCANCEL_TYPE ON ASU.TVACCANCEL_TYPE
(FK_ID)
NOLOGGING
TABLESPACE INDX
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


