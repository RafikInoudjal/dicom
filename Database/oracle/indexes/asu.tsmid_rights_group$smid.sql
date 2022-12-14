DROP INDEX ASU.TSMID_RIGHTS_GROUP$SMID
/

--
-- TSMID_RIGHTS_GROUP$SMID  (Index) 
--
CREATE UNIQUE INDEX ASU.TSMID_RIGHTS_GROUP$SMID ON ASU.TSMID_RIGHTS_GROUP
(FK_SMID, FK_GROUPID)
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


