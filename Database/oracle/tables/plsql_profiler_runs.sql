ALTER TABLE ASU.PLSQL_PROFILER_RUNS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.PLSQL_PROFILER_RUNS CASCADE CONSTRAINTS
/

--
-- PLSQL_PROFILER_RUNS  (Table) 
--
CREATE TABLE ASU.PLSQL_PROFILER_RUNS
(
  RUNID            NUMBER,
  RELATED_RUN      NUMBER,
  RUN_OWNER        VARCHAR2(32 BYTE),
  RUN_DATE         DATE,
  RUN_COMMENT      VARCHAR2(2047 BYTE),
  RUN_TOTAL_TIME   NUMBER,
  RUN_SYSTEM_INFO  VARCHAR2(2047 BYTE),
  RUN_COMMENT1     VARCHAR2(2047 BYTE),
  SPARE1           VARCHAR2(256 BYTE)
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

COMMENT ON TABLE ASU.PLSQL_PROFILER_RUNS IS 'Run-specific information for the PL/SQL profiler'
/


-- 
-- Non Foreign Key Constraints for Table PLSQL_PROFILER_RUNS 
-- 
ALTER TABLE ASU.PLSQL_PROFILER_RUNS ADD (
  PRIMARY KEY
 (RUNID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

