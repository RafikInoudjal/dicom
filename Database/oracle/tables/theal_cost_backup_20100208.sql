DROP TABLE ASU.THEAL_COST_BACKUP_20100208 CASCADE CONSTRAINTS
/

--
-- THEAL_COST_BACKUP_20100208  (Table) 
--
CREATE TABLE ASU.THEAL_COST_BACKUP_20100208
(
  FK_ID         NUMBER                          NOT NULL,
  FK_HEALID     NUMBER,
  FD_DATE1      DATE,
  FD_DATE2      DATE,
  FN_COST       NUMBER,
  FK_COMPANYID  NUMBER,
  FK_DOGOVORID  NUMBER,
  FL_KIOSK      NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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


