DROP INDEX ASU.THISTORY_NAZ_NAZID
/

--
-- THISTORY_NAZ_NAZID  (Index) 
--
CREATE INDEX ASU.THISTORY_NAZ_NAZID ON ASU.THISTORY_NAZ
(FK_NAZID)
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


