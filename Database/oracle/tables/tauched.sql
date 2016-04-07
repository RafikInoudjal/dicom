DROP TABLE ASU.TAUCHED CASCADE CONSTRAINTS
/

--
-- TAUCHED  (Table) 
--
CREATE TABLE ASU.TAUCHED
(
  FK_ID         NUMBER(9)                       DEFAULT -1                    NOT NULL,
  FC_NAME       VARCHAR2(50 BYTE)               NOT NULL,
  FC_PROISV     VARCHAR2(50 BYTE),
  FC_COMMENT    VARCHAR2(120 BYTE),
  FC_UCHEDISM   VARCHAR2(10 BYTE),
  FC_FASEDISM   VARCHAR2(10 BYTE),
  FC_INN        VARCHAR2(25 BYTE),
  FN_PRICE      NUMBER(9,2),
  FK_AUCHGRID   NUMBER(9)                       NOT NULL,
  FK_AFARMGRID  NUMBER(9)                       NOT NULL
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
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

COMMENT ON TABLE ASU.TAUCHED IS '������������������ ������ � ������'
/

COMMENT ON COLUMN ASU.TAUCHED.FK_ID IS 'SEQUENCE=[SEQ_TAUCHED]'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_NAME IS '��������'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_PROISV IS '�������������'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_COMMENT IS '�����������'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_UCHEDISM IS '������� ������� ���������'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_FASEDISM IS '���������� ������� ���������'
/

COMMENT ON COLUMN ASU.TAUCHED.FC_INN IS '����������� �����'
/

COMMENT ON COLUMN ASU.TAUCHED.FN_PRICE IS '����'
/

COMMENT ON COLUMN ASU.TAUCHED.FK_AUCHGRID IS '��� ������� ������'
/

COMMENT ON COLUMN ASU.TAUCHED.FK_AFARMGRID IS '��� ������������������ ������'
/


--
-- TAUCHED_INS  (Trigger) 
--
--  Dependencies: 
--   TAUCHED (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAUCHED_INS" 
BEFORE INSERT
ON tauched
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
bEGIN
  SELECT seq_tauched.nextval
    INTO :new.fk_id
    FROM dual;
END;
/
SHOW ERRORS;


--
-- TAUCHEDASU_INS  (Trigger) 
--
--  Dependencies: 
--   TAUCHED (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAUCHEDASU_INS" 
BEFORE INSERT
ON ASU.TAUCHED REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
bEGIN
  SELECT seq_tauched.nextval
    INTO :new.fk_id
    FROM dual;
END;
/
SHOW ERRORS;


