ALTER TABLE ASU.PLSQL_PROFILER_DATA
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.PLSQL_PROFILER_DATA CASCADE CONSTRAINTS
/

--
-- PLSQL_PROFILER_DATA  (Table) 
--
--  Dependencies: 
--   PLSQL_PROFILER_UNITS (Table)
--
CREATE TABLE ASU.PLSQL_PROFILER_DATA
(
  RUNID        NUMBER,
  UNIT_NUMBER  NUMBER,
  LINE#        NUMBER                           NOT NULL,
  TOTAL_OCCUR  NUMBER,
  TOTAL_TIME   NUMBER,
  MIN_TIME     NUMBER,
  MAX_TIME     NUMBER,
  SPARE1       NUMBER,
  SPARE2       NUMBER,
  SPARE3       NUMBER,
  SPARE4       NUMBER
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

COMMENT ON TABLE ASU.PLSQL_PROFILER_DATA IS 'Accumulated data from all profiler runs'
/


-- 
-- Non Foreign Key Constraints for Table PLSQL_PROFILER_DATA 
-- 
ALTER TABLE ASU.PLSQL_PROFILER_DATA ADD (
  PRIMARY KEY
 (RUNID, UNIT_NUMBER, LINE#)
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

-- 
-- Foreign Key Constraints for Table PLSQL_PROFILER_DATA 
-- 
ALTER TABLE ASU.PLSQL_PROFILER_DATA ADD (
  FOREIGN KEY (RUNID, UNIT_NUMBER) 
 REFERENCES ASU.PLSQL_PROFILER_UNITS (RUNID,UNIT_NUMBER))
/

