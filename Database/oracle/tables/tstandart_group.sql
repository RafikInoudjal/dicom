DROP TABLE ASU.TSTANDART_GROUP CASCADE CONSTRAINTS
/

--
-- TSTANDART_GROUP  (Table) 
--
CREATE TABLE ASU.TSTANDART_GROUP
(
  FK_ID    NUMBER                               NOT NULL,
  FC_NAME  VARCHAR2(255 BYTE),
  FL_TYPE  NUMBER(1)                            DEFAULT 1
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON COLUMN ASU.TSTANDART_GROUP.FK_ID IS 'SEQUENCE=[SEQ_TSTANDART_GROUP]'
/

COMMENT ON COLUMN ASU.TSTANDART_GROUP.FC_NAME IS '������������ ������'
/

COMMENT ON COLUMN ASU.TSTANDART_GROUP.FL_TYPE IS '1 - ���������, 2 �����'
/


--
-- TSTANDART_GROUP_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSTANDART_GROUP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTANDART_GROUP_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TSTANDART_GROUP   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSTANDART_GROUP.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


