DROP INDEX ASU.TPERESELEX_BY_FK_PALATAID
/

--
-- TPERESELEX_BY_FK_PALATAID  (Index) 
--
CREATE INDEX ASU.TPERESELEX_BY_FK_PALATAID ON ASU.TPERESELEX
(FK_PALATAID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          896K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


