DROP TABLE ASU.TNAZRECEPT CASCADE CONSTRAINTS
/

--
-- TNAZRECEPT  (Table) 
--
CREATE TABLE ASU.TNAZRECEPT
(
  FK_ID           NUMBER(9)                     NOT NULL,
  FC_NAME         VARCHAR2(255 BYTE),
  FC_COMMENT      VARCHAR2(2000 BYTE),
  FK_RECEPTVIDID  NUMBER(9),
  FL_DEL          NUMBER(1)                     DEFAULT 0                     NOT NULL,
  FC_WORKAREA     VARCHAR2(10 BYTE)             DEFAULT 'UVRACH'              NOT NULL
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

COMMENT ON TABLE ASU.TNAZRECEPT IS '���������� ������������ �������� � ������'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FK_ID IS 'SEQUENCE=[SEQ_TNAZRECEPT]'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FC_NAME IS '��������'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FC_COMMENT IS '��������'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FK_RECEPTVIDID IS '��� ���� �������'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FL_DEL IS '������� ��������'
/

COMMENT ON COLUMN ASU.TNAZRECEPT.FC_WORKAREA IS '������� ������� � ������� ����� ��� �������'
/


--
-- TNAZRECEPT_INS  (Trigger) 
--
--  Dependencies: 
--   TNAZRECEPT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZRECEPT_INS" 
BEFORE INSERT
ON ASU.TNAZRECEPT REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  select seq_tnazrecept.nextval into :new.fk_id from dual;
End;
/
SHOW ERRORS;


--
-- TNAZRECEPT_DEL  (Trigger) 
--
--  Dependencies: 
--   TNAZRECEPT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZRECEPT_DEL" 
BEFORE DELETE
ON ASU.TNAZRECEPT REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  delete from tnazreceptcon where fk_receptid=:old.fk_id;
END;
/
SHOW ERRORS;


