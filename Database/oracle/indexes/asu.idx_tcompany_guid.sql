DROP INDEX ASU.IDX_TCOMPANY_GUID
/

--
-- IDX_TCOMPANY_GUID  (Index) 
--
CREATE UNIQUE INDEX ASU.IDX_TCOMPANY_GUID ON ASU.TCOMPANY
(FK_GUID)
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


