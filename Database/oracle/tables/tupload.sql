ALTER TABLE ASU.TUPLOAD
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TUPLOAD CASCADE CONSTRAINTS
/

--
-- TUPLOAD  (Table) 
--
CREATE TABLE ASU.TUPLOAD
(
  FK_ID       INTEGER                           NOT NULL,
  FK_PACID    INTEGER                           NOT NULL,
  FK_SOTRID   INTEGER,
  FD_DATE     DATE,
  FC_COMMENT  VARCHAR2(255 BYTE)
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

COMMENT ON TABLE ASU.TUPLOAD IS 'by Spasskiy S.N. (01.10.2008) ����������� �������� ������ (ModExpImpDll.dll)'
/

COMMENT ON COLUMN ASU.TUPLOAD.FK_ID IS '[SEQ=SEQ_TUPLOAD]'
/

COMMENT ON COLUMN ASU.TUPLOAD.FK_PACID IS '��� ������������ ��������'
/

COMMENT ON COLUMN ASU.TUPLOAD.FK_SOTRID IS '��� ������������ ����������'
/

COMMENT ON COLUMN ASU.TUPLOAD.FD_DATE IS '���� ��������'
/

COMMENT ON COLUMN ASU.TUPLOAD.FC_COMMENT IS '�����������'
/


--
-- TUPLOAD_BY_ID  (Index) 
--
--  Dependencies: 
--   TUPLOAD (Table)
--
CREATE UNIQUE INDEX ASU.TUPLOAD_BY_ID ON ASU.TUPLOAD
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
-- TUPLOAD_BEGORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TUPLOAD (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUPLOAD_BEGORE_INSERT" 
  BEFORE INSERT ON ASU.TUPLOAD 
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TUPLOAD.NEXTVAL INTO :NEW.FK_ID FROM DUAL;

END TUPLOAD_BEGORE_INSERT;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TUPLOAD 
-- 
ALTER TABLE ASU.TUPLOAD ADD (
  CONSTRAINT TUPLOAD_BY_ID
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

