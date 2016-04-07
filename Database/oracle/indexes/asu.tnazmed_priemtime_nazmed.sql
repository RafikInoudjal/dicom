DROP INDEX ASU.TNAZMED_PRIEMTIME_NAZMED
/

--
-- TNAZMED_PRIEMTIME_NAZMED  (Index) 
--
CREATE INDEX ASU.TNAZMED_PRIEMTIME_NAZMED ON ASU.TNAZMED_PRIEMTIME
(FK_NAZMEDID)
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


