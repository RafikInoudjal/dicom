DROP INDEX ASU.TPROFP_DOG_BY_ID
/

--
-- TPROFP_DOG_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TPROFP_DOG_BY_ID ON ASU.TPROFP_DOG
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


