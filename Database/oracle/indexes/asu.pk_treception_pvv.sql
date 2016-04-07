DROP INDEX ASU.PK_TRECEPTION_PVV
/

--
-- PK_TRECEPTION_PVV  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TRECEPTION_PVV ON ASU.TRECEPTION_PVV
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


