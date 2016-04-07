DROP TABLE ASU.TSECTION_RIGHTS CASCADE CONSTRAINTS
/

--
-- TSECTION_RIGHTS  (Table) 
--
CREATE TABLE ASU.TSECTION_RIGHTS
(
  FK_ID      NUMBER(10),
  FK_SOTRID  NUMBER(10),
  FK_SECID   NUMBER(10),
  FN_ORDER   NUMBER(3),
  FL_ACCESS  NUMBER(1)                          DEFAULT 0                     NOT NULL
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          400K
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

COMMENT ON COLUMN ASU.TSECTION_RIGHTS.FK_SOTRID IS '��� ���������� �� ����� LOGIN'
/

COMMENT ON COLUMN ASU.TSECTION_RIGHTS.FK_SECID IS '��� �������'
/

COMMENT ON COLUMN ASU.TSECTION_RIGHTS.FN_ORDER IS '�������'
/

COMMENT ON COLUMN ASU.TSECTION_RIGHTS.FL_ACCESS IS '������'
/


--
-- TSECTION_RIGHTS_SOTR_SECID  (Index) 
--
--  Dependencies: 
--   TSECTION_RIGHTS (Table)
--
CREATE INDEX ASU.TSECTION_RIGHTS_SOTR_SECID ON ASU.TSECTION_RIGHTS
(FK_SOTRID, FK_SECID)
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


