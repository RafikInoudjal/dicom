ALTER TABLE ASU.TVAC_PLAN_PATTERN
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TVAC_PLAN_PATTERN CASCADE CONSTRAINTS
/

--
-- TVAC_PLAN_PATTERN  (Table) 
--
--  Dependencies: 
--   TVAC_PLANNING (Table)
--   TVAC_PLAN_CONDITION (Table)
--   TVAC_PERIOD_TYPE (Table)
--
CREATE TABLE ASU.TVAC_PLAN_PATTERN
(
  FK_ID           INTEGER                       NOT NULL,
  FK_PLANNING     INTEGER                       NOT NULL,
  FK_PERIOD_TYPE  INTEGER                       NOT NULL,
  FN_PERIOD       INTEGER                       NOT NULL,
  FN_KRATN        INTEGER                       NOT NULL,
  FN_SEX          NUMBER                        DEFAULT 2,
  FK_CONDITION    INTEGER                       DEFAULT NULL                  NOT NULL
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

COMMENT ON TABLE ASU.TVAC_PLAN_PATTERN IS '������, �� ���� �������� ����������� �������������� ���� ��������. Author: rca'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FK_ID IS 'SEQUENCE=[SEQ_VAC_PLAN_PATTERN]'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FK_PLANNING IS '����'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FK_PERIOD_TYPE IS '��� �������'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FN_PERIOD IS '������, ��������������� ��� ���������� ����������� ���� ����������'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FN_KRATN IS '���������'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FN_SEX IS '���, �������� ���������� ����������: 0-�������; 1-�������;2-����'
/

COMMENT ON COLUMN ASU.TVAC_PLAN_PATTERN.FK_CONDITION IS '������� ������������ ����������'
/


--
-- PK_TVAC_PLAN_PATTERN  (Index) 
--
--  Dependencies: 
--   TVAC_PLAN_PATTERN (Table)
--
CREATE UNIQUE INDEX ASU.PK_TVAC_PLAN_PATTERN ON ASU.TVAC_PLAN_PATTERN
(FK_ID)
NOLOGGING
TABLESPACE INDX
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
-- PLAN_PATTERN_BY_PLANNING  (Index) 
--
--  Dependencies: 
--   TVAC_PLAN_PATTERN (Table)
--
CREATE INDEX ASU.PLAN_PATTERN_BY_PLANNING ON ASU.TVAC_PLAN_PATTERN
(FK_PLANNING)
NOLOGGING
TABLESPACE INDX
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
-- TVAC_PLAN_PATTERN$BI  (Trigger) 
--
--  Dependencies: 
--   TVAC_PLAN_PATTERN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_PLAN_PATTERN$BI" 
 BEFORE
  INSERT
 ON asu.tvac_plan_pattern
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
    --  Column "FK_ID" uses sequence SEQ_VAC_PLAN_PATTERN
    SELECT SEQ_VAC_PLAN_PATTERN.NEXTVAL INTO :new.FK_ID FROM dual;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TVAC_PLAN_PATTERN 
-- 
ALTER TABLE ASU.TVAC_PLAN_PATTERN ADD (
  CONSTRAINT PK_TVAC_PLAN_PATTERN
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
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
-- Foreign Key Constraints for Table TVAC_PLAN_PATTERN 
-- 
ALTER TABLE ASU.TVAC_PLAN_PATTERN ADD (
  CONSTRAINT FK_TVAC_PLAN_PATTERN$PLANNING 
 FOREIGN KEY (FK_PLANNING) 
 REFERENCES ASU.TVAC_PLANNING (FK_ID),
  CONSTRAINT FK_TVAC_PLAN_PATTERN$PRD_TYPE 
 FOREIGN KEY (FK_PERIOD_TYPE) 
 REFERENCES ASU.TVAC_PERIOD_TYPE (FK_ID),
  CONSTRAINT TVAC_PLAN_PATTERN$CONDITION 
 FOREIGN KEY (FK_CONDITION) 
 REFERENCES ASU.TVAC_PLAN_CONDITION (FK_ID))
/

