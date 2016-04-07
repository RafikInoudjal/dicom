DROP TABLE ASU.TLOG_NEYVKA CASCADE CONSTRAINTS
/

--
-- TLOG_NEYVKA  (Table) 
--
CREATE TABLE ASU.TLOG_NEYVKA
(
  FC_ACTION  VARCHAR2(200 BYTE),
  FD_DATE    DATE
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


