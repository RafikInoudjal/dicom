DROP TABLE ASU.THISTORY_NAZ CASCADE CONSTRAINTS
/

--
-- THISTORY_NAZ  (Table) 
--
CREATE TABLE ASU.THISTORY_NAZ
(
  FK_ID       NUMBER(15)                        NOT NULL,
  FK_NAZID    NUMBER(15),
  FD_SYSDATE  DATE,
  FN_STATUS   NUMBER(15),
  FK_SOTRID   NUMBER(15),
  FK_SMID     NUMBER(15),
  FC_COMMENT  VARCHAR2(1000 BYTE)
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

COMMENT ON TABLE ASU.THISTORY_NAZ IS '������� ����������'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FK_ID IS 'SEQ_THISTORY_NAZ'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FK_NAZID IS 'VNAZ.FK_ID'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FD_SYSDATE IS '���� ��������� ������� ����������'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FN_STATUS IS '������'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FK_SOTRID IS '���������'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FK_SMID IS 'TSMID.FK_ID'
/

COMMENT ON COLUMN ASU.THISTORY_NAZ.FC_COMMENT IS '�����������'
/


--
-- THISTORY_NAZ_ID  (Index) 
--
--  Dependencies: 
--   THISTORY_NAZ (Table)
--
CREATE UNIQUE INDEX ASU.THISTORY_NAZ_ID ON ASU.THISTORY_NAZ
(FK_ID)
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


--
-- THISTORY_NAZ_NAZID  (Index) 
--
--  Dependencies: 
--   THISTORY_NAZ (Table)
--
CREATE INDEX ASU.THISTORY_NAZ_NAZID ON ASU.THISTORY_NAZ
(FK_NAZID)
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


--
-- THISTORY_NAZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   THISTORY_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."THISTORY_NAZ_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.thistory_naz
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_THISTORY_NAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


