DROP TABLE ASU.TPLANSLAVE CASCADE CONSTRAINTS
/

--
-- TPLANSLAVE  (Table) 
--
CREATE TABLE ASU.TPLANSLAVE
(
  FK_ID      NUMBER(15),
  FK_MAINID  NUMBER(15),
  FD_DATE    DATE,
  FK_VIDID   NUMBER(15),
  FN_KOL     NUMBER(15)
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

COMMENT ON TABLE ASU.TPLANSLAVE IS '������� ������� �� ���� by TimurLan [just 4 blue gorka]'
/

COMMENT ON COLUMN ASU.TPLANSLAVE.FK_ID IS 'SEQUENCE=[SEQ_TPLANSLAVE]'
/

COMMENT ON COLUMN ASU.TPLANSLAVE.FK_MAINID IS 'TPLANMAIN.FK_ID'
/

COMMENT ON COLUMN ASU.TPLANSLAVE.FD_DATE IS '����'
/

COMMENT ON COLUMN ASU.TPLANSLAVE.FK_VIDID IS 'TTYPEROOM.FK_ID'
/

COMMENT ON COLUMN ASU.TPLANSLAVE.FN_KOL IS '���������� ����'
/


--
-- TPLANSLAVE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPLANSLAVE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPLANSLAVE_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPLANSLAVE REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPLANSLAVE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


