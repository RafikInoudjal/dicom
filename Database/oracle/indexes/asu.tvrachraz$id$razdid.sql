DROP INDEX ASU.TVRACHRAZ$ID$RAZDID
/

--
-- TVRACHRAZ$ID$RAZDID  (Index) 
--
CREATE UNIQUE INDEX ASU.TVRACHRAZ$ID$RAZDID ON ASU.TVRACHRAZ
(FK_ID, FK_RAZDID)
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


