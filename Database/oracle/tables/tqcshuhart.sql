DROP TABLE ASU.TQCSHUHART CASCADE CONSTRAINTS
/

--
-- TQCSHUHART  (Table) 
--
CREATE TABLE ASU.TQCSHUHART
(
  FK_ID       NUMBER(9)                         DEFAULT -1                    NOT NULL,
  FN_VALUE    NUMBER(9,4)                       DEFAULT 0,
  FK_SMID     NUMBER(9)                         DEFAULT -1,
  FD_DATE     DATE,
  FC_COMMENT  VARCHAR2(4000 BYTE),
  FK_FIXID    NUMBER(9)                         DEFAULT -1,
  FN_CUSUM    NUMBER(13,4),
  FN_D        NUMBER(13,4),
  FP_SOST     NUMBER(1)
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

COMMENT ON TABLE ASU.TQCSHUHART IS '������� ��� �������� ������ �� ���������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FK_ID IS 'SEQUENCE=[SEQ_TQCSHUHART]'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FN_VALUE IS '�������� ��������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FK_SMID IS '��� �� ����'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FD_DATE IS '���� ���������� ��������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FC_COMMENT IS '�����������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FK_FIXID IS '��� ������������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FN_CUSUM IS '�������� ������������ �����'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FN_D IS '��������'
/

COMMENT ON COLUMN ASU.TQCSHUHART.FP_SOST IS '���������: 0 - ������ �� �������, 1 - ������ ��������, 2 - ����� �������,3 - ����� �� ��������'
/


--
-- TQCSHUHART_BY_DATE  (Index) 
--
--  Dependencies: 
--   TQCSHUHART (Table)
--
CREATE INDEX ASU.TQCSHUHART_BY_DATE ON ASU.TQCSHUHART
(FD_DATE)
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
-- TQCSHUHART_BY_DATE_SMID  (Index) 
--
--  Dependencies: 
--   TQCSHUHART (Table)
--
CREATE UNIQUE INDEX ASU.TQCSHUHART_BY_DATE_SMID ON ASU.TQCSHUHART
(FD_DATE, FK_SMID)
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
-- TQCSHUHART_BY_ID  (Index) 
--
--  Dependencies: 
--   TQCSHUHART (Table)
--
CREATE UNIQUE INDEX ASU.TQCSHUHART_BY_ID ON ASU.TQCSHUHART
(FK_ID)
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
-- TQCSHUHART_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TQCSHUHART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCSHUHART_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCSHUHART REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCSHUHART.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TQCSHUHART_AFTER_INSERT  (Trigger) 
--
--  Dependencies: 
--   TQCSHUHART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCSHUHART_AFTER_INSERT" 
AFTER INSERT
ON ASU.TQCSHUHART 
Begin
  DELETE FROM TQCSHUHART WHERE FK_SMID=-1;
End;
/
SHOW ERRORS;


