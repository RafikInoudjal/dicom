DROP INDEX ASU.PK_TVAC_KRATN
/

--
-- PK_TVAC_KRATN  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TVAC_KRATN ON ASU.TVAC_KRATN
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4352K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


