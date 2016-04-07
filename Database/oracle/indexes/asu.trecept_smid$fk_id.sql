DROP INDEX ASU.TRECEPT_SMID$FK_ID
/

--
-- TRECEPT_SMID$FK_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECEPT_SMID$FK_ID ON ASU.TRECEPT_SMID
(FK_ID)
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


