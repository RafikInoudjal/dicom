ALTER TABLE ASU.MKB308
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.MKB308 CASCADE CONSTRAINTS
/

--
-- MKB308  (Table) 
--
CREATE TABLE ASU.MKB308
(
  FK_ID     NUMBER,
  MKB_NAME  VARCHAR2(255 BYTE),
  ID        VARCHAR2(255 BYTE),
  MKB_CODE  VARCHAR2(255 BYTE)
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

COMMENT ON TABLE ASU.MKB308 IS '������� ������� ������������� � ���������� �������� DBF'
/

COMMENT ON COLUMN ASU.MKB308.FK_ID IS 'ASU.SEQ_MKB308'
/


--
-- K_MKB308_ID  (Index) 
--
--  Dependencies: 
--   MKB308 (Table)
--
CREATE UNIQUE INDEX ASU.K_MKB308_ID ON ASU.MKB308
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
-- MKB308_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   MKB308 (Table)
--
CREATE OR REPLACE TRIGGER ASU.MKB308_BEFORE_INSERT
  BEFORE INSERT
  ON ASU.MKB308   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_MKB308.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table MKB308 
-- 
ALTER TABLE ASU.MKB308 ADD (
  CONSTRAINT K_MKB308_ID
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

