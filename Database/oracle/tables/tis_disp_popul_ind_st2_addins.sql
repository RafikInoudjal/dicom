ALTER TABLE ASU.TIS_DISP_POPUL_IND_ST2_ADDINS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_DISP_POPUL_IND_ST2_ADDINS CASCADE CONSTRAINTS
/

--
-- TIS_DISP_POPUL_IND_ST2_ADDINS  (Table) 
--
--  Dependencies: 
--   TIS_DISP_POPULDATA_IND_STAGE2 (Table)
--
CREATE TABLE ASU.TIS_DISP_POPUL_IND_ST2_ADDINS
(
  FK_ID                        NUMBER           NOT NULL,
  FK_CODEID                    NUMBER,
  FN_COUNT                     NUMBER,
  FK_BASISCODEID               NUMBER,
  FK_IS_DISP_POPUL_IND_ST2_ID  NUMBER
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
-- PK_TIS_DISP_POPUL_IND_ST2_ADDI  (Index) 
--
--  Dependencies: 
--   TIS_DISP_POPUL_IND_ST2_ADDINS (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_POPUL_IND_ST2_ADDI ON ASU.TIS_DISP_POPUL_IND_ST2_ADDINS
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
-- TIS_DISP_POPUL_IND_ST2_ADD_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_DISP_POPUL_IND_ST2_ADDINS (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPUL_IND_ST2_ADD_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPUL_IND_ST2_ADDINS   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPUL_IND_ST2_AD.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_DISP_POPUL_IND_ST2_ADDINS 
-- 
ALTER TABLE ASU.TIS_DISP_POPUL_IND_ST2_ADDINS ADD (
  CONSTRAINT PK_TIS_DISP_POPUL_IND_ST2_ADDI
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
-- Foreign Key Constraints for Table TIS_DISP_POPUL_IND_ST2_ADDINS 
-- 
ALTER TABLE ASU.TIS_DISP_POPUL_IND_ST2_ADDINS ADD (
  CONSTRAINT FK_TIS_DISP_REFERENCE_TIS_DIS 
 FOREIGN KEY (FK_IS_DISP_POPUL_IND_ST2_ID) 
 REFERENCES ASU.TIS_DISP_POPULDATA_IND_STAGE2 (FK_ID))
/

