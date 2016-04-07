DROP INDEX ASU.TROOM_BY_FK_OTDELID
/

--
-- TROOM_BY_FK_OTDELID  (Index) 
--
CREATE INDEX ASU.TROOM_BY_FK_OTDELID ON ASU.TROOM
(FK_OTDELID)
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


