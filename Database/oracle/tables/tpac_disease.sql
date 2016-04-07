DROP TABLE ASU.TPAC_DISEASE CASCADE CONSTRAINTS
/

--
-- TPAC_DISEASE  (Table) 
--
CREATE TABLE ASU.TPAC_DISEASE
(
  FK_ID         NUMBER(15)                      NOT NULL,
  FK_PACID      NUMBER(15),
  FK_DISEASEID  NUMBER(15)
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

COMMENT ON TABLE ASU.TPAC_DISEASE IS '������� �������� by TimurLan'
/

COMMENT ON COLUMN ASU.TPAC_DISEASE.FK_ID IS 'SEQUENCE=[SEQ_TPAC_DISEASE]'
/

COMMENT ON COLUMN ASU.TPAC_DISEASE.FK_PACID IS '��� ��������'
/

COMMENT ON COLUMN ASU.TPAC_DISEASE.FK_DISEASEID IS '��� �������'
/


--
-- TPAC_DISEASE_BY_PACID  (Index) 
--
--  Dependencies: 
--   TPAC_DISEASE (Table)
--
CREATE INDEX ASU.TPAC_DISEASE_BY_PACID ON ASU.TPAC_DISEASE
(FK_PACID)
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
-- TPAC_DISEASE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPAC_DISEASE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPAC_DISEASE_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPAC_DISEASE REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPAC_DISEASE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


