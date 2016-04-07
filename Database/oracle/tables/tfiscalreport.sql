ALTER TABLE ASU.TFISCALREPORT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TFISCALREPORT CASCADE CONSTRAINTS
/

--
-- TFISCALREPORT  (Table) 
--
CREATE TABLE ASU.TFISCALREPORT
(
  FD_DATE  DATE,
  FP_TYPE  VARCHAR2(1 BYTE),
  FK_SOTR  NUMBER,
  FC_KKM   VARCHAR2(15 BYTE),
  FC_NUM   VARCHAR2(20 BYTE),
  FK_ID    NUMBER(15)                           NOT NULL
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

COMMENT ON TABLE ASU.TFISCALREPORT IS '������� ������ ���������� �� �������� ������� � �������� � ���  - Author:Kashira 14032011'
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FD_DATE IS '���� ������ ������ - Author:Kashira 14032011'
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FP_TYPE IS '��� ������: � - ��� �������, Z - � �������� - Author:Kashira 14032011'
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FK_SOTR IS '���������, ��� ������ ����� - Author:Kashira 14032011'
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FC_KKM IS '����� �����������  - Author:Kashira 14032011 '
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FC_NUM IS '����� ������ � �������� ��� ��� - Author:Kashira 14032011'
/

COMMENT ON COLUMN ASU.TFISCALREPORT.FK_ID IS 'SEQUENCE=[SEQ_TFISCALREPORT]'
/


--
-- TFISCALREPORT_IDX  (Index) 
--
--  Dependencies: 
--   TFISCALREPORT (Table)
--
CREATE INDEX ASU.TFISCALREPORT_IDX ON ASU.TFISCALREPORT
(FD_DATE, FC_KKM, FC_NUM)
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
-- TFISCALREPORT_PK  (Index) 
--
--  Dependencies: 
--   TFISCALREPORT (Table)
--
CREATE UNIQUE INDEX ASU.TFISCALREPORT_PK ON ASU.TFISCALREPORT
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
-- TFISCALREPORT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TFISCALREPORT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TFISCALREPORT_BEFORE_INSERT
BEFORE INSERT
ON ASU.TFISCALREPORT REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  IF :new.fk_id IS NULL THEN
    SELECT ASU.SEQ_TFISCALREPORT.NEXTVAL INTO :new.fk_id FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TFISCALREPORT 
-- 
ALTER TABLE ASU.TFISCALREPORT ADD (
  CONSTRAINT TFISCALREPORT_PK
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

