ALTER TABLE ASU.TPROFACTOR_PERIODS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TPROFACTOR_PERIODS CASCADE CONSTRAINTS
/

--
-- TPROFACTOR_PERIODS  (Table) 
--
CREATE TABLE ASU.TPROFACTOR_PERIODS
(
  FK_ID      NUMBER                             NOT NULL,
  FN_COUNT   NUMBER,
  FN_PERIOD  NUMBER,
  FC_NAME    VARCHAR2(25 BYTE),
  FN_DEL     NUMBER                             DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TPROFACTOR_PERIODS IS '���������� �������� ���������� ������������'
/

COMMENT ON COLUMN ASU.TPROFACTOR_PERIODS.FK_ID IS 'SEQUENCE=[SEQ_TPROFACTOR_PERIODS]'
/

COMMENT ON COLUMN ASU.TPROFACTOR_PERIODS.FN_COUNT IS '���������� �������� �� ������'
/

COMMENT ON COLUMN ASU.TPROFACTOR_PERIODS.FN_PERIOD IS '�������� ������� (���)'
/

COMMENT ON COLUMN ASU.TPROFACTOR_PERIODS.FC_NAME IS '����������� �������'
/

COMMENT ON COLUMN ASU.TPROFACTOR_PERIODS.FN_DEL IS '���� "������"'
/


--
-- PK_TPROFACTOR_PERIODS  (Index) 
--
--  Dependencies: 
--   TPROFACTOR_PERIODS (Table)
--
CREATE UNIQUE INDEX ASU.PK_TPROFACTOR_PERIODS ON ASU.TPROFACTOR_PERIODS
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROFACTOR_PERIODS_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   TPROFACTOR_PERIODS (Table)
--
CREATE OR REPLACE TRIGGER ASU.TPROFACTOR_PERIODS_BEF_INS
 BEFORE
 INSERT
 ON ASU.TPROFACTOR_PERIODS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.SEQ_PROFACTOR_PERIODS.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
end;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TPROFACTOR_PERIODS 
-- 
ALTER TABLE ASU.TPROFACTOR_PERIODS ADD (
  CONSTRAINT PK_TPROFACTOR_PERIODS
 PRIMARY KEY
 (FK_ID))
/
