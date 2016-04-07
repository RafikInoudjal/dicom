DROP INDEX ASU.PK_TPROFACTOR_STD
/

--
-- PK_TPROFACTOR_STD  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TPROFACTOR_STD ON ASU.TPROFACTOR_STD
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


