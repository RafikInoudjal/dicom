DROP TABLE ASU.TQCDAILYMEENCALCFIX CASCADE CONSTRAINTS
/

--
-- TQCDAILYMEENCALCFIX  (Table) 
--
CREATE TABLE ASU.TQCDAILYMEENCALCFIX
(
  FK_ID      NUMBER(9)                          DEFAULT -1,
  FN_PROBA   NUMBER(3),
  FN_VALUE   NUMBER(12,5),
  FK_PERIOD  NUMBER(9)
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

COMMENT ON TABLE ASU.TQCDAILYMEENCALCFIX IS '������� ��� �������� ������������� �������� ��� �������� �� �����������������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENCALCFIX.FK_ID IS 'SEQUENCE=[SEQ_TQCDAILYMEENCALCFIX]'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENCALCFIX.FN_PROBA IS '����� �����'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENCALCFIX.FN_VALUE IS '��������'
/

COMMENT ON COLUMN ASU.TQCDAILYMEENCALCFIX.FK_PERIOD IS 'TQCDAILYMEENFIX->FK_ID'
/


--
-- TQCDAILYMEENCALCFIX_BEFORE_IN  (Trigger) 
--
--  Dependencies: 
--   TQCDAILYMEENCALCFIX (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCDAILYMEENCALCFIX_BEFORE_IN" 
BEFORE INSERT
ON ASU.TQCDAILYMEENCALCFIX REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCDAILYMEENCALCFIX.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


