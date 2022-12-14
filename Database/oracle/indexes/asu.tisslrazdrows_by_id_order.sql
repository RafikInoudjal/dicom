DROP INDEX ASU.TISSLRAZDROWS_BY_ID_ORDER
/

--
-- TISSLRAZDROWS_BY_ID_ORDER  (Index) 
--
CREATE UNIQUE INDEX ASU.TISSLRAZDROWS_BY_ID_ORDER ON ASU.TISSLRAZDROWS
(FK_ID, FN_ORDER)
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


