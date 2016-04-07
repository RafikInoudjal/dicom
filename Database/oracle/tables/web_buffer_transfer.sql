ALTER TABLE ASU.WEB_BUFFER_TRANSFER
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.WEB_BUFFER_TRANSFER CASCADE CONSTRAINTS
/

--
-- WEB_BUFFER_TRANSFER  (Table) 
--
CREATE TABLE ASU.WEB_BUFFER_TRANSFER
(
  ID               NUMBER,
  UPLOAD_DATE      DATE,
  REGIST_DATE      DATE,
  TABLE_NAME       VARCHAR2(255 CHAR),
  KEY_FIELD_VALUE  NUMBER,
  ACTION           VARCHAR2(255 BYTE),
  FC_INFO          VARCHAR2(255 BYTE),
  ACTUAL_DATE      DATE
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON COLUMN ASU.WEB_BUFFER_TRANSFER.ACTUAL_DATE IS '���� ������������, ���� �� ������ ����������'
/


--
-- PK_WEB_BUF_TRANSF  (Index) 
--
--  Dependencies: 
--   WEB_BUFFER_TRANSFER (Table)
--
CREATE UNIQUE INDEX ASU.PK_WEB_BUF_TRANSF ON ASU.WEB_BUFFER_TRANSFER
(ID)
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
-- WEB_BUFFER_TRANSFER$BI  (Trigger) 
--
--  Dependencies: 
--   WEB_BUFFER_TRANSFER (Table)
--
CREATE OR REPLACE TRIGGER ASU."WEB_BUFFER_TRANSFER$BI" 
  BEFORE INSERT ON ASU.WEB_BUFFER_TRANSFER   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_WEB_BUFFER_TRANSFFER.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table WEB_BUFFER_TRANSFER 
-- 
ALTER TABLE ASU.WEB_BUFFER_TRANSFER ADD (
  CONSTRAINT PK_WEB_BUF_TRANSF
 PRIMARY KEY
 (ID)
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

GRANT INSERT, SELECT ON ASU.WEB_BUFFER_TRANSFER TO LOGIN
/

