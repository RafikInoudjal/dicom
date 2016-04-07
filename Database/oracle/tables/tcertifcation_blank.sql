ALTER TABLE ASU.TCERTIFCATION_BLANK
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TCERTIFCATION_BLANK CASCADE CONSTRAINTS
/

--
-- TCERTIFCATION_BLANK  (Table) 
--
CREATE TABLE ASU.TCERTIFCATION_BLANK
(
  FK_ID      NUMBER                             NOT NULL,
  FN_STATE   NUMBER                             DEFAULT 0,
  FD_DATE    DATE,
  FC_SERIES  VARCHAR2(10 BYTE),
  FC_NUMBER  VARCHAR2(10 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
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

COMMENT ON TABLE ASU.TCERTIFCATION_BLANK IS '������ ������� ������������'
/

COMMENT ON COLUMN ASU.TCERTIFCATION_BLANK.FK_ID IS 'SEQUENCE=[SEQ_TCERTIFCATION_BLANK]'
/

COMMENT ON COLUMN ASU.TCERTIFCATION_BLANK.FN_STATE IS '��������� ������: 0 - �� ����� (������), 1 - �����, 2 - ��������, 3 - ������, 4 - �������'
/

COMMENT ON COLUMN ASU.TCERTIFCATION_BLANK.FD_DATE IS '���� ��������� ��������� ������'
/

COMMENT ON COLUMN ASU.TCERTIFCATION_BLANK.FC_SERIES IS '����� ������ �������� �����������'
/

COMMENT ON COLUMN ASU.TCERTIFCATION_BLANK.FC_NUMBER IS '����� ������ �������� �����������'
/


--
-- TCERTIFCATION_BLANK_BY_ID  (Index) 
--
--  Dependencies: 
--   TCERTIFCATION_BLANK (Table)
--
CREATE UNIQUE INDEX ASU.TCERTIFCATION_BLANK_BY_ID ON ASU.TCERTIFCATION_BLANK
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TCERT_BLANK_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TCERTIFCATION_BLANK (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCERT_BLANK_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TCERTIFCATION_BLANK   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TCERTIFCATION_BLANK.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TCERTIFCATION_BLANK 
-- 
ALTER TABLE ASU.TCERTIFCATION_BLANK ADD (
  CONSTRAINT TCERTIFCATION_BLANK_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          160K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

