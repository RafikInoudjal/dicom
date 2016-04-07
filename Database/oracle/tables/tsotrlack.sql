ALTER TABLE ASU.TSOTRLACK
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSOTRLACK CASCADE CONSTRAINTS
/

--
-- TSOTRLACK  (Table) 
--
CREATE TABLE ASU.TSOTRLACK
(
  FK_ID        NUMBER(15)                       NOT NULL,
  FK_PEOPLEID  NUMBER(15),
  FN_TYPE      NUMBER(5),
  FD_DATEFROM  DATE,
  FD_DATETO    DATE,
  FK_SOTRINS   NUMBER(15),
  FD_DATEINS   DATE,
  FK_SOTRDEL   NUMBER(15),
  FD_DATEDEL   DATE,
  FL_DEL       NUMBER(1)                        DEFAULT 0,
  FL_SEND      NUMBER(1)                        DEFAULT 0
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

COMMENT ON TABLE ASU.TSOTRLACK IS '������� ���������� �����������'
/

COMMENT ON COLUMN ASU.TSOTRLACK.FN_TYPE IS '������� ���������� 1-������������, 2 - ����������. 3 - ������  '
/

COMMENT ON COLUMN ASU.TSOTRLACK.FD_DATEFROM IS '���� ������ '
/

COMMENT ON COLUMN ASU.TSOTRLACK.FD_DATETO IS ' ���� ���������'
/

COMMENT ON COLUMN ASU.TSOTRLACK.FK_SOTRINS IS '��� ������� ������'
/

COMMENT ON COLUMN ASU.TSOTRLACK.FK_SOTRDEL IS '��� ������'
/


--
-- TSOTRLACK_BY_ID  (Index) 
--
--  Dependencies: 
--   TSOTRLACK (Table)
--
CREATE UNIQUE INDEX ASU.TSOTRLACK_BY_ID ON ASU.TSOTRLACK
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
-- TSOTRLACK_FK_PEOPLEID  (Index) 
--
--  Dependencies: 
--   TSOTRLACK (Table)
--
CREATE INDEX ASU.TSOTRLACK_FK_PEOPLEID ON ASU.TSOTRLACK
(FK_PEOPLEID)
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
-- TSOTRLACK_FK_SOTRDEL  (Index) 
--
--  Dependencies: 
--   TSOTRLACK (Table)
--
CREATE INDEX ASU.TSOTRLACK_FK_SOTRDEL ON ASU.TSOTRLACK
(FK_SOTRDEL)
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
-- TSOTRLACK_FK_SOTRINS  (Index) 
--
--  Dependencies: 
--   TSOTRLACK (Table)
--
CREATE INDEX ASU.TSOTRLACK_FK_SOTRINS ON ASU.TSOTRLACK
(FK_SOTRINS)
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
-- TSOTRLACK_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   TSOTRLACK (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSOTRLACK_BEF_INS"
BEFORE INSERT
ON ASU.TSOTRLACK REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  IF :NEW.FK_ID IS NULL THEN
     SELECT ASU.SEQ_TSOTRLACK.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  END IF;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSOTRLACK 
-- 
ALTER TABLE ASU.TSOTRLACK ADD (
  CONSTRAINT TSOTRLACK_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/

