ALTER TABLE ASU.TVACCIN_SHEM
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TVACCIN_SHEM CASCADE CONSTRAINTS
/

--
-- TVACCIN_SHEM  (Table) 
--
--  Dependencies: 
--   TVACCIN_SHEMNAME (Table)
--
CREATE TABLE ASU.TVACCIN_SHEM
(
  FK_ID            INTEGER                      NOT NULL,
  FN_TYPE          INTEGER                      NOT NULL,
  FN_MINPAUSE      INTEGER                      NOT NULL,
  FC_MINPAUSETEXT  VARCHAR2(70 BYTE)            NOT NULL,
  FN_MINAGE        INTEGER,
  FC_MINAGETEXT    VARCHAR2(70 BYTE),
  FK_SHEMNAME      INTEGER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
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

COMMENT ON TABLE ASU.TVACCIN_SHEM IS '����� ����������
Author: Ura'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FK_ID IS 'SEQUENCE=[SEQ_VACCIN_SHEM]'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FN_TYPE IS '01=V1, 02=V2 11=R1, 12=R2'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FN_MINPAUSE IS '����������� ����� � ���� (��� ������� 0),'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FC_MINPAUSETEXT IS '����� ����������� �����'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FN_MINAGE IS '���������� ������� � ����'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FC_MINAGETEXT IS '����� ������������ ��������'
/

COMMENT ON COLUMN ASU.TVACCIN_SHEM.FK_SHEMNAME IS '������ �� �������� ����� TVACCIN_SHEMNAME.FK_D'
/


--
-- IX_TVACCIN_SHEM$FK_SHEMNAME  (Index) 
--
--  Dependencies: 
--   TVACCIN_SHEM (Table)
--
CREATE INDEX ASU.IX_TVACCIN_SHEM$FK_SHEMNAME ON ASU.TVACCIN_SHEM
(FK_SHEMNAME)
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
-- PK_TVACCIN_SHEM  (Index) 
--
--  Dependencies: 
--   TVACCIN_SHEM (Table)
--
CREATE UNIQUE INDEX ASU.PK_TVACCIN_SHEM ON ASU.TVACCIN_SHEM
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
-- TVACCIN_SHEM_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TVACCIN_SHEM (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVACCIN_SHEM_BEFORE_INSERT" BEFORE INSERT
ON ASU.TVACCIN_SHEM FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_VACCIN_SHEM
      IF :NEW.FK_ID IS NULL
      THEN
         SELECT SEQ_VACCIN_SHEM.NEXTVAL INTO :NEW.FK_ID from dual;
      END IF;
end;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TVACCIN_SHEM 
-- 
ALTER TABLE ASU.TVACCIN_SHEM ADD (
  CONSTRAINT PK_TVACCIN_SHEM
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

-- 
-- Foreign Key Constraints for Table TVACCIN_SHEM 
-- 
ALTER TABLE ASU.TVACCIN_SHEM ADD (
  CONSTRAINT FK_TVACCIN_SHEM$TVACCIN_SHEM 
 FOREIGN KEY (FK_SHEMNAME) 
 REFERENCES ASU.TVACCIN_SHEMNAME (FK_ID))
/

