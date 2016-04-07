ALTER TABLE ASU.TIS_DISP_LPUDATA
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_DISP_LPUDATA CASCADE CONSTRAINTS
/

--
-- TIS_DISP_LPUDATA  (Table) 
--
--  Dependencies: 
--   TIS_DISP (Table)
--
CREATE TABLE ASU.TIS_DISP_LPUDATA
(
  FK_ID                        NUMBER           NOT NULL,
  FN_PREVENTIONCABEXISTS       NUMBER,
  FN_MOBILEBRIGADECOUNT        NUMBER,
  FN_MOBILEBRIGADEPEOPLE       NUMBER,
  FN_REFUSEDCITIZENEVENT       NUMBER,
  FN_REFUSEDCITIZENDISPENSARY  NUMBER,
  FK_IS_DISP_ID                NUMBER
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
-- PK_TIS_DISP_LPUDATA  (Index) 
--
--  Dependencies: 
--   TIS_DISP_LPUDATA (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_LPUDATA ON ASU.TIS_DISP_LPUDATA
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
-- TIS_DISP_LPUDATA_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_DISP_LPUDATA (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_LPUDATA_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_LPUDATA   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_LPUDATA.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_DISP_LPUDATA 
-- 
ALTER TABLE ASU.TIS_DISP_LPUDATA ADD (
  CONSTRAINT PK_TIS_DISP_LPUDATA
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
-- Foreign Key Constraints for Table TIS_DISP_LPUDATA 
-- 
ALTER TABLE ASU.TIS_DISP_LPUDATA ADD (
  CONSTRAINT FK_TIS_DISP_REFERENCE_TIS_DISP 
 FOREIGN KEY (FK_IS_DISP_ID) 
 REFERENCES ASU.TIS_DISP (FK_ID))
/

