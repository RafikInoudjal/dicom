DROP INDEX ASU.PK_TNAZN_PV_NUMBER
/

--
-- PK_TNAZN_PV_NUMBER  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TNAZN_PV_NUMBER ON ASU.TNAZN_PV_NUMBER
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


