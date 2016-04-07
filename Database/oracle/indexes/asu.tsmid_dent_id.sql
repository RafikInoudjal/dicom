DROP INDEX ASU.TSMID_DENT_ID
/

--
-- TSMID_DENT_ID  (Index) 
--
CREATE INDEX ASU.TSMID_DENT_ID ON ASU.TSMID_DENT
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


