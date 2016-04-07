DROP INDEX ASU.PK_TOFOMS_INFO
/

--
-- PK_TOFOMS_INFO  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TOFOMS_INFO ON ASU.TOFOMS_INFO
(FK_INSURANCEID)
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


