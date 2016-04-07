DROP TABLE ASU.TPASS CASCADE CONSTRAINTS
/

--
-- TPASS  (Table) 
--
CREATE TABLE ASU.TPASS
(
  FK_ID        NUMBER(15),
  FK_SOTRID    NUMBER(15),
  FK_SPECID    NUMBER(15),
  FC_PASS      VARCHAR2(15 BYTE),
  FN_NORMANAZ  NUMBER,
  FN_NORMAUET  NUMBER
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

COMMENT ON TABLE ASU.TPASS IS '���������� ������� by TimurLan '
/

COMMENT ON COLUMN ASU.TPASS.FK_ID IS 'ID'
/

COMMENT ON COLUMN ASU.TPASS.FK_SOTRID IS 'TSOTR.FK_ID'
/

COMMENT ON COLUMN ASU.TPASS.FK_SPECID IS 'TSPEC.FK_ID'
/

COMMENT ON COLUMN ASU.TPASS.FC_PASS IS '��������'
/

COMMENT ON COLUMN ASU.TPASS.FN_NORMANAZ IS '����� ���������� ��� �����������'
/

COMMENT ON COLUMN ASU.TPASS.FN_NORMAUET IS '����� ��� ��� �����������'
/


--
-- TPASS_ID  (Index) 
--
--  Dependencies: 
--   TPASS (Table)
--
CREATE UNIQUE INDEX ASU.TPASS_ID ON ASU.TPASS
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPASS_SOTRID  (Index) 
--
--  Dependencies: 
--   TPASS (Table)
--
CREATE INDEX ASU.TPASS_SOTRID ON ASU.TPASS
(FK_SOTRID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPASS_SPECID  (Index) 
--
--  Dependencies: 
--   TPASS (Table)
--
CREATE INDEX ASU.TPASS_SPECID ON ASU.TPASS
(FK_SPECID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


DROP SYNONYM STAT.TPASS
/

--
-- TPASS  (Synonym) 
--
--  Dependencies: 
--   TPASS (Table)
--
CREATE SYNONYM STAT.TPASS FOR ASU.TPASS
/


