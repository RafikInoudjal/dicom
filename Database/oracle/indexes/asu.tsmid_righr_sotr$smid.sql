DROP INDEX ASU.TSMID_RIGHR_SOTR$SMID
/

--
-- TSMID_RIGHR_SOTR$SMID  (Index) 
--
CREATE UNIQUE INDEX ASU.TSMID_RIGHR_SOTR$SMID ON ASU.TSMID_RIGHT_SOTR
(FK_SMID, FK_SOTRID)
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


