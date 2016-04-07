DROP INDEX ASU.TAMBHISTORY_BY_FK_FROMKAB
/

--
-- TAMBHISTORY_BY_FK_FROMKAB  (Index) 
--
CREATE INDEX ASU.TAMBHISTORY_BY_FK_FROMKAB ON ASU.TDOCHISTORY
(FK_FROMKABINETID)
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


