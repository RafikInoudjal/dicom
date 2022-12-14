DROP INDEX ASU.TOKRUGNIK_BY_FIOGR
/

--
-- TOKRUGNIK_BY_FIOGR  (Index) 
--
CREATE INDEX ASU.TOKRUGNIK_BY_FIOGR ON ASU.TOKRUGNIK
(SUBSTR("FAM",1,3)||SUBSTR("IM",1,1)||SUBSTR("OTCH",1,1)||TO_CHAR("DATE_B_DAY",'YY'))
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


