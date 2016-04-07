ALTER TABLE ASU.TTEMP_INSURANCE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TTEMP_INSURANCE CASCADE CONSTRAINTS
/

--
-- TTEMP_INSURANCE  (Table) 
--
CREATE TABLE ASU.TTEMP_INSURANCE
(
  FK_ID          NUMBER                         NOT NULL,
  FC_LASTNAME    VARCHAR2(255 BYTE),
  FC_NAME        VARCHAR2(255 BYTE),
  FC_PATRONYMIC  VARCHAR2(255 BYTE),
  FD_BIRTH       DATE,
  FL_SEX         NUMBER,
  FC_SER         VARCHAR2(100 BYTE),
  FC_NUM         VARCHAR2(100 BYTE),
  FD_BEG         DATE,
  FD_END         DATE,
  FC_WORK        VARCHAR2(255 BYTE),
  FC_ADDRESS     VARCHAR2(255 BYTE),
  FD_DATE        DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
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

COMMENT ON TABLE ASU.TTEMP_INSURANCE IS '�������� ��������� ������� ������� ������ ���'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FK_ID IS 'SEQUENCE=[SEQ_TTEMP_INSURANCE]'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_LASTNAME IS '�������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_NAME IS '���'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_PATRONYMIC IS '��������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FD_BIRTH IS '���� ��������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FL_SEX IS '���'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_SER IS '����� ������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_NUM IS '����� ������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FD_BEG IS '������ ��������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FD_END IS '��������� ��������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_WORK IS '����� ������'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FC_ADDRESS IS '�����'
/

COMMENT ON COLUMN ASU.TTEMP_INSURANCE.FD_DATE IS '���� �������'
/


--
-- TTEMP_INSURANCE_BY_FIO  (Index) 
--
--  Dependencies: 
--   TTEMP_INSURANCE (Table)
--
CREATE INDEX ASU.TTEMP_INSURANCE_BY_FIO ON ASU.TTEMP_INSURANCE
(FC_LASTNAME, FC_NAME, FC_PATRONYMIC)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TTEMP_INSURANCE_BY_ID  (Index) 
--
--  Dependencies: 
--   TTEMP_INSURANCE (Table)
--
CREATE UNIQUE INDEX ASU.TTEMP_INSURANCE_BY_ID ON ASU.TTEMP_INSURANCE
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TTEMP_INSURANCE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TTEMP_INSURANCE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTEMP_INSURANCE_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TTEMP_INSURANCE   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TTEMP_INSURANCE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TTEMP_INSURANCE 
-- 
ALTER TABLE ASU.TTEMP_INSURANCE ADD (
  CONSTRAINT TTEMP_INSURANCE_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          160K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

