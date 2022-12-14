ALTER TABLE ASU.TIS_PLAN_DEPTBED
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_PLAN_DEPTBED CASCADE CONSTRAINTS
/

--
-- TIS_PLAN_DEPTBED  (Table) 
--
--  Dependencies: 
--   TIS_PLAN (Table)
--
CREATE TABLE ASU.TIS_PLAN_DEPTBED
(
  FK_ID          NUMBER                         NOT NULL,
  FK_BEDTYPEID   NUMBER,
  FN_COUNT       NUMBER,
  FK_IS_PLAN_ID  NUMBER
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


--
-- PK_TIS_PLAN_DEPTBED  (Index) 
--
--  Dependencies: 
--   TIS_PLAN_DEPTBED (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_PLAN_DEPTBED ON ASU.TIS_PLAN_DEPTBED
(FK_ID)
NOLOGGING
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
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TIS_PLAN_DEPTBED_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_PLAN_DEPTBED (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_PLAN_DEPTBED_BI
  BEFORE INSERT
  ON ASU.TIS_PLAN_DEPTBED   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_PLAN_DEPTBED.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_PLAN_DEPTBED 
-- 
ALTER TABLE ASU.TIS_PLAN_DEPTBED ADD (
  CONSTRAINT PK_TIS_PLAN_DEPTBED
 PRIMARY KEY
 (FK_ID)
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
-- Foreign Key Constraints for Table TIS_PLAN_DEPTBED 
-- 
ALTER TABLE ASU.TIS_PLAN_DEPTBED ADD (
  CONSTRAINT FK_TIS_PLAN_REFERENCE_TIS_PLAN 
 FOREIGN KEY (FK_IS_PLAN_ID) 
 REFERENCES ASU.TIS_PLAN (FK_ID))
/

