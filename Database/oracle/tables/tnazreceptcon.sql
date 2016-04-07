DROP TABLE ASU.TNAZRECEPTCON CASCADE CONSTRAINTS
/

--
-- TNAZRECEPTCON  (Table) 
--
CREATE TABLE ASU.TNAZRECEPTCON
(
  FK_ID        NUMBER(9),
  FK_RECEPTID  NUMBER(9),
  FK_MEDICID   NUMBER(9),
  FN_KOL       NUMBER(9,3)                      DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
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

COMMENT ON TABLE ASU.TNAZRECEPTCON IS '���������� �������'
/

COMMENT ON COLUMN ASU.TNAZRECEPTCON.FK_ID IS 'SEQUENCE=[SEQ_TNAZRECEPTCON]'
/

COMMENT ON COLUMN ASU.TNAZRECEPTCON.FK_RECEPTID IS '��� �������'
/

COMMENT ON COLUMN ASU.TNAZRECEPTCON.FK_MEDICID IS '��� �����������'
/

COMMENT ON COLUMN ASU.TNAZRECEPTCON.FN_KOL IS '���-�� ����������� ������� ���������� ��� ���������� ����� �������'
/


--
-- PK_TNAZRECEPTCON  (Index) 
--
--  Dependencies: 
--   TNAZRECEPTCON (Table)
--
CREATE UNIQUE INDEX ASU.PK_TNAZRECEPTCON ON ASU.TNAZRECEPTCON
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
-- TNAZRECEPTCON_MEDICID  (Index) 
--
--  Dependencies: 
--   TNAZRECEPTCON (Table)
--
CREATE INDEX ASU.TNAZRECEPTCON_MEDICID ON ASU.TNAZRECEPTCON
(FK_MEDICID)
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
-- TNAZRECEPTCON_INS  (Trigger) 
--
--  Dependencies: 
--   TNAZRECEPTCON (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZRECEPTCON_INS" 
BEFORE INSERT
ON ASU.TNAZRECEPTCON REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  select seq_tnazreceptcon.nextval into :new.fk_id from dual;
End;
/
SHOW ERRORS;


