DROP INDEX ASU.TLPY_COMPANY_BY_FK_COMPANY_LPY
/

--
-- TLPY_COMPANY_BY_FK_COMPANY_LPY  (Index) 
--
CREATE INDEX ASU.TLPY_COMPANY_BY_FK_COMPANY_LPY ON ASU.TLPY_COMPANY
(FK_COMPANY_LPY)
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


