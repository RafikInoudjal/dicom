DROP INDEX ASU.TVAC_PEOPLE$FD_CREATE
/

--
-- TVAC_PEOPLE$FD_CREATE  (Index) 
--
CREATE INDEX ASU.TVAC_PEOPLE$FD_CREATE ON ASU.TVAC_PEOPLE
(FD_CREATE)
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


