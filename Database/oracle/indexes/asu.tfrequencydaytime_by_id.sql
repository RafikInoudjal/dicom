DROP INDEX ASU.TFREQUENCYDAYTIME_BY_ID
/

--
-- TFREQUENCYDAYTIME_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TFREQUENCYDAYTIME_BY_ID ON ASU.TFREQUENCYDAYTIME
(FK_DAYTIMEID, FK_FREQUENCYID)
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

