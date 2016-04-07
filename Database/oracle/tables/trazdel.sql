DROP TABLE ASU.TRAZDEL CASCADE CONSTRAINTS
/

--
-- TRAZDEL  (Table) 
--
CREATE TABLE ASU.TRAZDEL
(
  FK_ID     NUMBER(16),
  FC_NAME   VARCHAR2(60 BYTE),
  FK_SMID   NUMBER(16)                          DEFAULT -1,
  FK_DOID   NUMBER(2),
  FN_ORDER  NUMBER(3),
  FC_FUNC   VARCHAR2(90 BYTE),
  FC_DLL    VARCHAR2(90 BYTE),
  FK_APPID  NUMBER(9),
  FK_DLLID  NUMBER(9),
  FL_HIDE   NUMBER(1)
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

COMMENT ON TABLE ASU.TRAZDEL IS '���������� �������� �� by TimurLan'
/

COMMENT ON COLUMN ASU.TRAZDEL.FK_ID IS 'SEQUENCE=[SEQ_TRAZDEL]'
/

COMMENT ON COLUMN ASU.TRAZDEL.FC_NAME IS '��������'
/

COMMENT ON COLUMN ASU.TRAZDEL.FK_SMID IS 'TSMID.FK_ID'
/

COMMENT ON COLUMN ASU.TRAZDEL.FK_DOID IS '��� ���������'
/

COMMENT ON COLUMN ASU.TRAZDEL.FN_ORDER IS '�������'
/

COMMENT ON COLUMN ASU.TRAZDEL.FC_FUNC IS '������� �������'
/

COMMENT ON COLUMN ASU.TRAZDEL.FC_DLL IS '������� DLL'
/

COMMENT ON COLUMN ASU.TRAZDEL.FK_APPID IS '��� ����������'
/

COMMENT ON COLUMN ASU.TRAZDEL.FK_DLLID IS '��� DLL'
/

COMMENT ON COLUMN ASU.TRAZDEL.FL_HIDE IS '������� ������'
/


--
-- TRAZDEL  (Index) 
--
--  Dependencies: 
--   TRAZDEL (Table)
--
CREATE UNIQUE INDEX ASU.TRAZDEL ON ASU.TRAZDEL
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
-- TRAZDEL$FK_SMID  (Index) 
--
--  Dependencies: 
--   TRAZDEL (Table)
--
CREATE INDEX ASU.TRAZDEL$FK_SMID ON ASU.TRAZDEL
(FK_SMID)
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
-- TRAZDEL_SMID_APPID_DOI  (Index) 
--
--  Dependencies: 
--   TRAZDEL (Table)
--
CREATE INDEX ASU.TRAZDEL_SMID_APPID_DOI ON ASU.TRAZDEL
(FK_SMID, FK_APPID, FK_DOID)
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
-- TRAZDEL_INSERT  (Trigger) 
--
--  Dependencies: 
--   TRAZDEL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRAZDEL_INSERT" 
  BEFORE INSERT
  ON ASU.TRAZDEL   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT SEQ_TRAZDEL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


--
-- TRAZDEL_DELETE  (Trigger) 
--
--  Dependencies: 
--   TRAZDEL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRAZDEL_DELETE" 
  BEFORE DELETE
  ON ASU.TRAZDEL   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  delete from tvrachraz where FK_RAZDID=:OLD.fk_id;
End;
/
SHOW ERRORS;


