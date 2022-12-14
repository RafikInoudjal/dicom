DROP TABLE ASU.TKATEGORIA CASCADE CONSTRAINTS
/

--
-- TKATEGORIA  (Table) 
--
CREATE TABLE ASU.TKATEGORIA
(
  FK_ID    NUMBER(16)                           NOT NULL,
  FC_NAME  VARCHAR2(30 BYTE)
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

COMMENT ON COLUMN ASU.TKATEGORIA.FK_ID IS 'SEQUENCE=[SEQ_TKATEGORIA]'
/


--
-- TKATEGORIA_BEGORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TKATEGORIA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TKATEGORIA_BEGORE_INSERT" 
  BEFORE INSERT
  ON ASU.TKATEGORIA   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TKATEGORIA.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


