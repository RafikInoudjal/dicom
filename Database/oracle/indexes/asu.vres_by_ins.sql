DROP INDEX ASU.VRES_BY_INS
/

--
-- VRES_BY_INS  (Index) 
--
CREATE INDEX ASU.VRES_BY_INS ON ASU.VRES
(FD_INS)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          22912K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


