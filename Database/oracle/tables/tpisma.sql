DROP TABLE ASU.TPISMA CASCADE CONSTRAINTS
/

--
-- TPISMA  (Table) 
--
CREATE TABLE ASU.TPISMA
(
  FK_ID        NUMBER(15),
  FK_PREDID    NUMBER(15),
  FK_NAME_PIS  VARCHAR2(10 BYTE),
  FD_DATA      DATE,
  OLDID        NUMBER,
  FN_SUM       NUMBER(17,2),
  FN_NUM       NUMBER(15)
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

COMMENT ON TABLE ASU.TPISMA IS '���������� ����� by TimurLan'
/

COMMENT ON COLUMN ASU.TPISMA.FK_ID IS 'SEQUENCE=[SEQ_TPISMA]'
/

COMMENT ON COLUMN ASU.TPISMA.FK_PREDID IS 'TCOMPANY.FK_ID'
/

COMMENT ON COLUMN ASU.TPISMA.FK_NAME_PIS IS '��������'
/

COMMENT ON COLUMN ASU.TPISMA.FD_DATA IS '����'
/

COMMENT ON COLUMN ASU.TPISMA.OLDID IS '��������� ����'
/

COMMENT ON COLUMN ASU.TPISMA.FN_SUM IS '�����'
/

COMMENT ON COLUMN ASU.TPISMA.FN_NUM IS '�����'
/


--
-- TPISMA_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPISMA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPISMA_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPISMA REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPISMA.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TPISMA_AFTER_DELETE  (Trigger) 
--
--  Dependencies: 
--   TPISMA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPISMA_AFTER_DELETE" 
AFTER DELETE
ON ASU.TPISMA REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  DELETE FROM TKARTA WHERE FK_KOD=:OLD.FK_ID AND FK_KOD2=1 AND FP_TEK_COC=1;
End;
/
SHOW ERRORS;


