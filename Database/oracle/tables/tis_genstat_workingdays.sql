ALTER TABLE ASU.TIS_GENSTAT_WORKINGDAYS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_GENSTAT_WORKINGDAYS CASCADE CONSTRAINTS
/

--
-- TIS_GENSTAT_WORKINGDAYS  (Table) 
--
--  Dependencies: 
--   TIS_GENSTAT_OUTPAT (Table)
--
CREATE TABLE ASU.TIS_GENSTAT_WORKINGDAYS
(
  FK_ID                NUMBER                   NOT NULL,
  FK_DOLGNID           NUMBER,
  FN_WORKINGDAYSCOUNT  NUMBER,
  FK_IS_GENSTAT_ID     NUMBER
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
-- PK_TIS_GENSTAT_WORKINGDAYS  (Index) 
--
--  Dependencies: 
--   TIS_GENSTAT_WORKINGDAYS (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_GENSTAT_WORKINGDAYS ON ASU.TIS_GENSTAT_WORKINGDAYS
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
-- TIS_GENSTAT_WORKINGDAYS_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_GENSTAT_WORKINGDAYS (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_GENSTAT_WORKINGDAYS_BI
  BEFORE INSERT
  ON ASU.TIS_GENSTAT_WORKINGDAYS   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_GENSTAT_WORKINGDAYS.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_GENSTAT_WORKINGDAYS 
-- 
ALTER TABLE ASU.TIS_GENSTAT_WORKINGDAYS ADD (
  CONSTRAINT PK_TIS_GENSTAT_WORKINGDAYS
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
-- Foreign Key Constraints for Table TIS_GENSTAT_WORKINGDAYS 
-- 
ALTER TABLE ASU.TIS_GENSTAT_WORKINGDAYS ADD (
  CONSTRAINT FK_TIS_GENS_REFERENCE_TIS_GEN3 
 FOREIGN KEY (FK_IS_GENSTAT_ID) 
 REFERENCES ASU.TIS_GENSTAT_OUTPAT (FK_ID))
/

