DROP INDEX ASU.TS_PRINTIB_RIGHTS_ID1
/

--
-- TS_PRINTIB_RIGHTS_ID1  (Index) 
--
CREATE INDEX ASU.TS_PRINTIB_RIGHTS_ID1 ON ASU.TS_PRINTIB_RIGHTS
(FK_SOTRID, FK_PRINTIBID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


