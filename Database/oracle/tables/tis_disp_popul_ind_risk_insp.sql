ALTER TABLE ASU.TIS_DISP_POPUL_IND_RISK_INSP
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_DISP_POPUL_IND_RISK_INSP CASCADE CONSTRAINTS
/

--
-- TIS_DISP_POPUL_IND_RISK_INSP  (Table) 
--
--  Dependencies: 
--   TIS_DISP_POPULDATA_IND_RISK (Table)
--
CREATE TABLE ASU.TIS_DISP_POPUL_IND_RISK_INSP
(
  FK_ID                      NUMBER             NOT NULL,
  FK_CODEID                  NUMBER,
  FN_PEOPLECOUNT             NUMBER,
  FK_DISP_POPUL_IND_RISK_ID  NUMBER
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
-- PK_TIS_DISP_POPUL_IND_RISK_INS  (Index) 
--
--  Dependencies: 
--   TIS_DISP_POPUL_IND_RISK_INSP (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_POPUL_IND_RISK_INS ON ASU.TIS_DISP_POPUL_IND_RISK_INSP
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
-- TIS_DISP_POPUL_IND_RISK_IN_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_DISP_POPUL_IND_RISK_INSP (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPUL_IND_RISK_IN_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPUL_IND_RISK_INSP   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPUL_IND_RISK_IN.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_DISP_POPUL_IND_RISK_INSP 
-- 
ALTER TABLE ASU.TIS_DISP_POPUL_IND_RISK_INSP ADD (
  CONSTRAINT PK_TIS_DISP_POPUL_IND_RISK_INS
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
-- Foreign Key Constraints for Table TIS_DISP_POPUL_IND_RISK_INSP 
-- 
ALTER TABLE ASU.TIS_DISP_POPUL_IND_RISK_INSP ADD (
  CONSTRAINT FK_TIS_DISP_REFERENCE_TIS_DI 
 FOREIGN KEY (FK_DISP_POPUL_IND_RISK_ID) 
 REFERENCES ASU.TIS_DISP_POPULDATA_IND_RISK (FK_ID))
/

