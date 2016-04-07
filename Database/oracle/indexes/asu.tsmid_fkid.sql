DROP INDEX ASU.TSMID_FKID
/

--
-- TSMID_FKID  (Index) 
--
CREATE INDEX ASU.TSMID_FKID ON ASU.TSMID
(FK_ID)
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


