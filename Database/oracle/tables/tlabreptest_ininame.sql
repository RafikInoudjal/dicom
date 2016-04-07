ALTER TABLE ASU.TLABREPTEST_ININAME
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TLABREPTEST_ININAME CASCADE CONSTRAINTS
/

--
-- TLABREPTEST_ININAME  (Table) 
--
CREATE TABLE ASU.TLABREPTEST_ININAME
(
  FK_ID    INTEGER                              NOT NULL,
  FC_NAME  VARCHAR2(250 BYTE)                   NOT NULL
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

COMMENT ON TABLE ASU.TLABREPTEST_ININAME IS '��������� ��� ������ "������ ������������������ ����"
Author: Ura'
/

COMMENT ON COLUMN ASU.TLABREPTEST_ININAME.FK_ID IS 'SEQUENCE=[SEQ_TLABREPTEST]'
/

COMMENT ON COLUMN ASU.TLABREPTEST_ININAME.FC_NAME IS '��������'
/


--
-- PK_TLABREPORTTEST_ININAME  (Index) 
--
--  Dependencies: 
--   TLABREPTEST_ININAME (Table)
--
CREATE UNIQUE INDEX ASU.PK_TLABREPORTTEST_ININAME ON ASU.TLABREPTEST_ININAME
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
-- TLABRREPTEST_ININAME$BI  (Trigger) 
--
--  Dependencies: 
--   TLABREPTEST_ININAME (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLABRREPTEST_ININAME$BI" 
 BEFORE
  INSERT
 ON tlabreptest_ininame
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  IF :NEW.FK_ID IS NULL THEN
    SELECT  SEQ_TLABREPTEST.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TLABREPTEST_ININAME 
-- 
ALTER TABLE ASU.TLABREPTEST_ININAME ADD (
  CONSTRAINT PK_TLABREPORTTEST_ININAME
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/

