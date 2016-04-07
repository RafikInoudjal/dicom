DROP INDEX ASU.TSTANDART_FK_GROUPID
/

--
-- TSTANDART_FK_GROUPID  (Index) 
--
CREATE INDEX ASU.TSTANDART_FK_GROUPID ON ASU.TSTANDART
(FK_GROUPID)
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

