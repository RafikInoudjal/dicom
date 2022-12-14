DROP INDEX ASU.PK_TVACCANCEL_INF
/

--
-- PK_TVACCANCEL_INF  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVACCANCEL_INF ON ASU.TVACCANCEL_INF
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


