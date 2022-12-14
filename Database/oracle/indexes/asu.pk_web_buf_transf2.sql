DROP INDEX ASU.PK_WEB_BUF_TRANSF2
/

--
-- PK_WEB_BUF_TRANSF2  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_WEB_BUF_TRANSF2 ON ASU.WEB_BUFFER_TRANSFER2
(ID)
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


