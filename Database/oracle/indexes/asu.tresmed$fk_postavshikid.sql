DROP INDEX ASU.TRESMED$FK_POSTAVSHIKID
/

--
-- TRESMED$FK_POSTAVSHIKID  (Index) 
--
CREATE INDEX ASU.TRESMED$FK_POSTAVSHIKID ON ASU.TRESMED
(FK_APOSTAVSHIKID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          640K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

