DROP TABLE ASU.TNEUROSOFTFILES CASCADE CONSTRAINTS
/

--
-- TNEUROSOFTFILES  (Table) 
--
CREATE TABLE ASU.TNEUROSOFTFILES
(
  FK_ID       NUMBER(15),
  FK_FILESID  NUMBER(15),
  FK_NAZID    NUMBER(15)
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

COMMENT ON TABLE ASU.TNEUROSOFTFILES IS 'not used now - Kapusta+TimurLan '
/

COMMENT ON COLUMN ASU.TNEUROSOFTFILES.FK_ID IS 'SEQUENCE=[SEQ_TNEUROSOFTFILES]'
/

COMMENT ON COLUMN ASU.TNEUROSOFTFILES.FK_FILESID IS 'TFILES.FK_ID'
/

COMMENT ON COLUMN ASU.TNEUROSOFTFILES.FK_NAZID IS 'VNAZ.FK_ID'
/


--
-- TNEUROSOFTFILES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TNEUROSOFTFILES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNEUROSOFTFILES_BEFORE_INSERT" 
  BEFORE INSERT ON asu.tneurosoftfiles
  REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  SELECT seq_tneurosoftfiles.nextval INTO :new.fk_id FROM DUAL;
END;
/
SHOW ERRORS;


