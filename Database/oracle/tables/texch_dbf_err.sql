ALTER TABLE ASU.TEXCH_DBF_ERR
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TEXCH_DBF_ERR CASCADE CONSTRAINTS
/

--
-- TEXCH_DBF_ERR  (Table) 
--
CREATE TABLE ASU.TEXCH_DBF_ERR
(
  FK_ID       NUMBER(15)                        NOT NULL,
  FC_CODE     VARCHAR2(8 BYTE),
  FC_ACTION   VARCHAR2(2000 BYTE),
  FC_COMMENT  VARCHAR2(256 BYTE),
  FC_FIELDS   VARCHAR2(256 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
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

COMMENT ON TABLE ASU.TEXCH_DBF_ERR IS '������ ������ ����������� ��� �������� � DBF Author:Efimov'
/

COMMENT ON COLUMN ASU.TEXCH_DBF_ERR.FK_ID IS 'SEQ_TEXCH_DBF_ERR'
/

COMMENT ON COLUMN ASU.TEXCH_DBF_ERR.FC_CODE IS '��� ������ �� ������ �����'
/

COMMENT ON COLUMN ASU.TEXCH_DBF_ERR.FC_ACTION IS '����� ����������� ������'
/

COMMENT ON COLUMN ASU.TEXCH_DBF_ERR.FC_COMMENT IS '�����������'
/

COMMENT ON COLUMN ASU.TEXCH_DBF_ERR.FC_FIELDS IS '���� �� ������� ���� ����������� ������� ������'
/


--
-- I_TEXCH_DBF_ERR_CODE  (Index) 
--
--  Dependencies: 
--   TEXCH_DBF_ERR (Table)
--
CREATE INDEX ASU.I_TEXCH_DBF_ERR_CODE ON ASU.TEXCH_DBF_ERR
(FC_CODE)
NOLOGGING
TABLESPACE USR
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
-- K_TEXCH_DBF_ERR_ID  (Index) 
--
--  Dependencies: 
--   TEXCH_DBF_ERR (Table)
--
CREATE UNIQUE INDEX ASU.K_TEXCH_DBF_ERR_ID ON ASU.TEXCH_DBF_ERR
(FK_ID)
NOLOGGING
TABLESPACE USR
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
-- TEXCH_DBF_ERR_INSERT  (Trigger) 
--
--  Dependencies: 
--   TEXCH_DBF_ERR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEXCH_DBF_ERR_INSERT" 
 BEFORE
  INSERT
 ON asu.TEXCH_DBF_ERR
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TEXCH_DBF_ERR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TEXCH_DBF_ERR 
-- 
ALTER TABLE ASU.TEXCH_DBF_ERR ADD (
  CONSTRAINT K_TEXCH_DBF_ERR_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

