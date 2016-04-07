DROP INDEX ASU.TPEOPLES_COMPANY_PEPLID
/

--
-- TPEOPLES_COMPANY_PEPLID  (Index) 
--
CREATE INDEX ASU.TPEOPLES_COMPANY_PEPLID ON ASU.TPEOPLES_COMPANY
(FK_PEOPLEID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


