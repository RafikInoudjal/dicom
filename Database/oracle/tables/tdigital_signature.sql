ALTER TABLE ASU.TDIGITAL_SIGNATURE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TDIGITAL_SIGNATURE CASCADE CONSTRAINTS
/

--
-- TDIGITAL_SIGNATURE  (Table) 
--
CREATE TABLE ASU.TDIGITAL_SIGNATURE
(
  FK_ID           INTEGER                       NOT NULL,
  FK_SQL_RULEID   INTEGER,
  FK_MAINTABLEID  INTEGER,
  FD_DATE         DATE,
  FK_KEYID        INTEGER,
  FC_SIGNATURE    VARCHAR2(4000 BYTE),
  FK_PEOPLEID     INTEGER,
  FK_SOTRID       INTEGER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
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

COMMENT ON TABLE ASU.TDIGITAL_SIGNATURE IS '�������� ������� Author: Linnikov'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FK_ID IS 'SEQ_TDIGITAL_SIGNATURE'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FK_SQL_RULEID IS '������, ����������� ������������� ������ [TSIGN_SQL_RULES.FK_ID]'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FK_MAINTABLEID IS 'FK_ID ������� �������'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FD_DATE IS '���� �������'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FK_KEYID IS '����'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FC_SIGNATURE IS '�������'
/

COMMENT ON COLUMN ASU.TDIGITAL_SIGNATURE.FK_PEOPLEID IS '[TPEOPLES.FK_ID]'
/


--
-- TDIGITAL_SIGNATURE_FK_SOTR_ID  (Index) 
--
--  Dependencies: 
--   TDIGITAL_SIGNATURE (Table)
--
CREATE INDEX ASU.TDIGITAL_SIGNATURE_FK_SOTR_ID ON ASU.TDIGITAL_SIGNATURE
(FK_SOTRID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TDIGITAL_SIGNATURE_PK  (Index) 
--
--  Dependencies: 
--   TDIGITAL_SIGNATURE (Table)
--
CREATE UNIQUE INDEX ASU.TDIGITAL_SIGNATURE_PK ON ASU.TDIGITAL_SIGNATURE
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TDIGITAL_SIGN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TDIGITAL_SIGNATURE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDIGITAL_SIGN_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON asu.TDIGITAL_SIGNATURE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
begin
  if :NEW.FK_ID is null then
    SELECT seq_TDIGITAL_SIGNATURE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
end;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TDIGITAL_SIGNATURE 
-- 
ALTER TABLE ASU.TDIGITAL_SIGNATURE ADD (
  CONSTRAINT TDIGITAL_SIGNATURE_PK
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

