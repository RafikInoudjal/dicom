DROP INDEX ASU.TSMID_TNSET_SETID
/

--
-- TSMID_TNSET_SETID  (Index) 
--
CREATE INDEX ASU.TSMID_TNSET_SETID ON ASU.TSMID_TNSETTINGS
(FK_SETID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


