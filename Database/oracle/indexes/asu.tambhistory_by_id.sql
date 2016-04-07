DROP INDEX ASU.TAMBHISTORY_BY_ID
/

--
-- TAMBHISTORY_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TAMBHISTORY_BY_ID ON ASU.TDOCHISTORY
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


