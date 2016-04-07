ALTER TABLE ASU.TTYPEDOC
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TTYPEDOC CASCADE CONSTRAINTS
/

--
-- TTYPEDOC  (Table) 
--
CREATE TABLE ASU.TTYPEDOC
(
  FK_ID        NUMBER                           NOT NULL,
  FC_NAME      VARCHAR2(255 BYTE),
  FN_ORDER     NUMBER,
  FL_NOTDOC    INTEGER,
  FC_SYNONIM   VARCHAR2(50 BYTE),
  FK_SMID_KOD  NUMBER,
  FL_DEL       NUMBER(1)                        DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
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

COMMENT ON TABLE ASU.TTYPEDOC IS '���� ���������� �����������'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FK_ID IS 'SEQUENCE=[SEQ_TTYPEDOC]'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FC_NAME IS '������������ ���� ���������'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FN_ORDER IS '��� ����������'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FL_NOTDOC IS '���� - �� �������� ��������� ����������'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FC_SYNONIM IS '�������'
/

COMMENT ON COLUMN ASU.TTYPEDOC.FL_DEL IS '�������� ���� ��������� 1-�������'
/


--
-- TTYPEDOC$FC_SYNONIM  (Index) 
--
--  Dependencies: 
--   TTYPEDOC (Table)
--
CREATE INDEX ASU.TTYPEDOC$FC_SYNONIM ON ASU.TTYPEDOC
(FC_SYNONIM)
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
-- TTYPEDOC$FK_ID  (Index) 
--
--  Dependencies: 
--   TTYPEDOC (Table)
--
CREATE INDEX ASU.TTYPEDOC$FK_ID ON ASU.TTYPEDOC
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
-- TTYPEDOC$FN_ORDER  (Index) 
--
--  Dependencies: 
--   TTYPEDOC (Table)
--
CREATE INDEX ASU.TTYPEDOC$FN_ORDER ON ASU.TTYPEDOC
(FN_ORDER)
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
-- TTYPEDOC_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TTYPEDOC (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTYPEDOC_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.ttypedoc
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_TTYPEDOC.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TTYPEDOC 
-- 
ALTER TABLE ASU.TTYPEDOC ADD (
  CONSTRAINT PK_TTYPEDOC
 PRIMARY KEY
 (FK_ID))
/

GRANT REFERENCES, SELECT ON ASU.TTYPEDOC TO EXCHANGE
/

GRANT REFERENCES, SELECT ON ASU.TTYPEDOC TO EXCH43
/

