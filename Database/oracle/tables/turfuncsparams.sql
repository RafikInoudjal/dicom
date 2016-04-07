DROP TABLE ASU.TURFUNCSPARAMS CASCADE CONSTRAINTS
/

--
-- TURFUNCSPARAMS  (Table) 
--
CREATE TABLE ASU.TURFUNCSPARAMS
(
  FK_ID      NUMBER(9)                          DEFAULT -1,
  FK_FUNCID  NUMBER(9)                          DEFAULT -1,
  FP_PARAM   NUMBER(2)                          DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
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

COMMENT ON TABLE ASU.TURFUNCSPARAMS IS '����� ��������� � �������'
/

COMMENT ON COLUMN ASU.TURFUNCSPARAMS.FK_ID IS 'SEQUENCE=[SEQ_TURFUNCSPARAMS]'
/

COMMENT ON COLUMN ASU.TURFUNCSPARAMS.FK_FUNCID IS 'TURFUNCS->FK_ID'
/

COMMENT ON COLUMN ASU.TURFUNCSPARAMS.FP_PARAM IS '0 - SMID, 1 - AMB, 2 - SEX, 3 - AGE,4 - cell, 5 - just a number'
/


--
-- TURFUNCSPARAMS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TURFUNCSPARAMS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TURFUNCSPARAMS_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TURFUNCSPARAMS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TURFUNCSPARAMS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


