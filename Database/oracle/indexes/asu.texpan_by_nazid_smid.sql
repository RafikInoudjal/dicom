DROP INDEX ASU.TEXPAN_BY_NAZID_SMID
/

--
-- TEXPAN_BY_NAZID_SMID  (Index) 
--
CREATE UNIQUE INDEX ASU.TEXPAN_BY_NAZID_SMID ON ASU.TEXPAN
(FK_SMID, FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          87168K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


