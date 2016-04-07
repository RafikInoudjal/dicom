DROP INDEX ASU.TKARTA_BY_FK_COC_POLID
/

--
-- TKARTA_BY_FK_COC_POLID  (Index) 
--
CREATE INDEX ASU.TKARTA_BY_FK_COC_POLID ON ASU.TKARTA
(FK_COC_POLID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


