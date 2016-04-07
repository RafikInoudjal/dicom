DROP TABLE ASU.TGRAPH_CRITERIA_NAZ CASCADE CONSTRAINTS
/

--
-- TGRAPH_CRITERIA_NAZ  (Table) 
--
CREATE TABLE ASU.TGRAPH_CRITERIA_NAZ
(
  FK_ID        NUMBER(10)                       NOT NULL,
  FK_SMID      NUMBER(15),
  FK_CRITERID  NUMBER(15),
  FT_TIMEB     DATE,
  FT_TIMEE     DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON COLUMN ASU.TGRAPH_CRITERIA_NAZ.FK_ID IS 'SEQUENCE=[SEQ_TGRAPH_CRITERIA_NAZ]'
/


--
-- TGRAPH_CRITERIA_NAZ_CRIT  (Index) 
--
--  Dependencies: 
--   TGRAPH_CRITERIA_NAZ (Table)
--
CREATE INDEX ASU.TGRAPH_CRITERIA_NAZ_CRIT ON ASU.TGRAPH_CRITERIA_NAZ
(FK_ID, FK_CRITERID)
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


--
-- TGRAPH_CRITNAZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TGRAPH_CRITERIA_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TGRAPH_CRITNAZ_BEFORE_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TGRAPH_CRITERIA_NAZ  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  select SEQ_tgraph_criteria_naz.NEXTVAL into :NEW.FK_ID from dual;
end;


-- End of DDL Script for Table ASU.TGRAPH_CRITERIA_NAZ
/
SHOW ERRORS;


