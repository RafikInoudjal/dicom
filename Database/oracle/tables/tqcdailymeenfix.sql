DROP TABLE ASU.TQCDAILYMEENFIX CASCADE CONSTRAINTS
/

--
-- TQCDAILYMEENFIX  (Table) 
--
CREATE TABLE ASU.TQCDAILYMEENFIX
(
  FK_ID     NUMBER(9)                           DEFAULT -1                    NOT NULL,
  FK_SMID   NUMBER(9)                           DEFAULT -1,
  FN_XM     NUMBER(9,4)                         DEFAULT 0,
  FN_S      NUMBER(9,4)                         DEFAULT 0,
  FD_DATA1  DATE,
  FD_DATA2  DATE
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

COMMENT ON TABLE ASU.TQCDAILYMEENFIX IS '������� � �������������� ���������� X�� � S ��� ������������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FK_ID IS 'SEQUENCE=[SEQ_TQCDAILYMEENFIX]'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FK_SMID IS '��� �� �����������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FN_XM IS '�������� X��'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FN_S IS '�������� ������������������� ����������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FD_DATA1 IS '���� ������ �������� ������������� ��������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENFIX.FD_DATA2 IS '���� ����� �������� ������������� ��������'
/


--
-- TQCDAILYMEENFIX_SMID_DATAS  (Index) 
--
--  Dependencies: 
--   TQCDAILYMEENFIX (Table)
--
CREATE INDEX ASU.TQCDAILYMEENFIX_SMID_DATAS ON ASU.TQCDAILYMEENFIX
(FK_SMID, FD_DATA1, FD_DATA2)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TQCDAILYMEENFIX_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TQCDAILYMEENFIX (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCDAILYMEENFIX_BEFORE_INSERT" 
BEFORE  INSERT  ON ASU.TQCDAILYMEENFIX FOR EACH ROW
Begin
  SELECT SEQ_TQCDAILYMEENFIX.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


