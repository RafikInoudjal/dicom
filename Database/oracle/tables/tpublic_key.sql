ALTER TABLE ASU.TPUBLIC_KEY
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TPUBLIC_KEY CASCADE CONSTRAINTS
/

--
-- TPUBLIC_KEY  (Table) 
--
CREATE TABLE ASU.TPUBLIC_KEY
(
  FK_ID         INTEGER                         NOT NULL,
  FB_KEY        BLOB,
  FD_CREATE     DATE,
  FD_DELETE     DATE,
  FL_DEL        INTEGER                         DEFAULT 0,
  FK_PEOPLEID   INTEGER,
  FC_CONTAINER  VARCHAR2(100 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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

COMMENT ON TABLE ASU.TPUBLIC_KEY IS '��������� ����� ������������� Author: Linnikov'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FK_ID IS 'SEQ_TPUBLIC_KEY'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FB_KEY IS '����'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FD_CREATE IS '���� �����������'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FD_DELETE IS '���� �������� (�����������)'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FL_DEL IS '������� �������� 1 - ������, ����� - ���'
/

COMMENT ON COLUMN ASU.TPUBLIC_KEY.FK_PEOPLEID IS '�������-��������� TPEOPLES'
/


--
-- TPUBLIC_KEY_PK  (Index) 
--
--  Dependencies: 
--   TPUBLIC_KEY (Table)
--
CREATE UNIQUE INDEX ASU.TPUBLIC_KEY_PK ON ASU.TPUBLIC_KEY
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
-- TPUBLIC_KEY_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPUBLIC_KEY (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPUBLIC_KEY_BEFORE_INSERT" 
 BEFORE INSERT ON ASU.TPUBLIC_KEY  REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
DECLARE
pcnt INTEGER;
BEGIN
 if :NEW.FK_ID is null then
   SELECT SEQ_TPUBLIC_KEY.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 end if;
 SELECT COUNT(1)
   INTO pcnt
   FROM ASU.TPUBLIC_KEY
  WHERE FK_PEOPLEID = :NEW.FK_PEOPLEID
    AND fl_del = 0;
 IF pcnt > 0 THEN
   raise_application_error (-20001, '��������� ��� ����� �������������� ����');
 END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TPUBLIC_KEY 
-- 
ALTER TABLE ASU.TPUBLIC_KEY ADD (
  CONSTRAINT TPUBLIC_KEY_PK
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

