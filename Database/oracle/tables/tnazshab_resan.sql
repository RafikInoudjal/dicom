DROP TABLE ASU.TNAZSHAB_RESAN CASCADE CONSTRAINTS
/

--
-- TNAZSHAB_RESAN  (Table) 
--
CREATE TABLE ASU.TNAZSHAB_RESAN
(
  FK_ID        NUMBER,
  FK_SMID      NUMBER,
  FD_INS       DATE,
  FC_RES       VARCHAR2(4000 BYTE),
  FK_BLOBID    NUMBER(15),
  FN_RES       NUMBER(15,4),
  FC_TYPE      VARCHAR2(30 BYTE),
  FK_VRACHID   NUMBER,
  FK_PACID     NUMBER(15),
  FK_NAZID     NUMBER(15),
  FK_PATNAME   NUMBER(16)                       DEFAULT 0                     NOT NULL,
  FC_COMENT    VARCHAR2(100 BYTE),
  FK_SOS       NUMBER(9),
  FK_COLID     NUMBER(9),
  FL_ZAKL      NUMBER(9)                        DEFAULT 0,
  FL_PATFIRST  NUMBER(1)                        DEFAULT 0,
  FK_PATID     NUMBER(9),
  FN_RES2      NUMBER(15,4),
  FK_BLOBID2   NUMBER(15),
  FK_BLOBID3   NUMBER(15),
  FK_SHABID    NUMBER(15)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1040K
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

COMMENT ON TABLE ASU.TNAZSHAB_RESAN IS '������� ����������� �������� ��� �������� ����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_ID IS 'SEQUENCE=[SEQ_TNAZSHAB_RESAN]'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_SMID IS '��� ����������� ����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FD_INS IS '���� ������������� (� ����������)'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FC_RES IS '����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_BLOBID IS 'TBLOBS.FK_ID'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FN_RES IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FC_TYPE IS '���'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_VRACHID IS '���� �����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_PACID IS '��� ��������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_NAZID IS '��� ����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_PATNAME IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FC_COMENT IS '�����������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_SOS IS '������'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_COLID IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FL_ZAKL IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FL_PATFIRST IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_PATID IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FN_RES2 IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_BLOBID2 IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_BLOBID3 IS '��������� ����'
/

COMMENT ON COLUMN ASU.TNAZSHAB_RESAN.FK_SHABID IS '��� �������  TSHABLON.FK_ID'
/


--
-- TNAZSHAB_RESAN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TNAZSHAB_RESAN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZSHAB_RESAN_BEFORE_INSERT" 
BEFORE INSERT
ON tnazshab_resan
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
begin
 select SEQ_TNAZSHAB_RESAN.nextval  into :new.fk_id from dual;
end;
/
SHOW ERRORS;


