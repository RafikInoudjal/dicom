DROP TABLE ASU.DIPLOMA_SPECIALITY CASCADE CONSTRAINTS
/

--
-- DIPLOMA_SPECIALITY  (Table) 
--
CREATE TABLE ASU.DIPLOMA_SPECIALITY
(
  FK_ID    NUMBER,
  FC_NAME  VARCHAR2(255 BYTE)
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

COMMENT ON TABLE ASU.DIPLOMA_SPECIALITY IS '���������� ����������, ���������� � ����, author: Kulbatsky'
/

COMMENT ON COLUMN ASU.DIPLOMA_SPECIALITY.FK_ID IS 'ID'
/

COMMENT ON COLUMN ASU.DIPLOMA_SPECIALITY.FC_NAME IS '������������ �������������'
/


