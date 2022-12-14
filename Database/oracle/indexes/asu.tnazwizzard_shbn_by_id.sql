DROP INDEX ASU.TNAZWIZZARD_SHBN_BY_ID
/

--
-- TNAZWIZZARD_SHBN_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZWIZZARD_SHBN_BY_ID ON ASU.TNAZWIZZARD_SHBN
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          80K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


