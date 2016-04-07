ALTER TABLE ASU.TNAZSOS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TNAZSOS CASCADE CONSTRAINTS
/

--
-- TNAZSOS  (Table) 
--
CREATE TABLE ASU.TNAZSOS
(
  FK_ID    NUMBER(15)                           NOT NULL,
  FC_NAME  VARCHAR2(30 BYTE),
  FK_GUID  VARCHAR2(32 BYTE)                    DEFAULT sys_guid()
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

COMMENT ON TABLE ASU.TNAZSOS IS 'Справочник состояний'
/

COMMENT ON COLUMN ASU.TNAZSOS.FK_ID IS 'SEQUENCE=[SEQ_TNAZSOS]'
/

COMMENT ON COLUMN ASU.TNAZSOS.FC_NAME IS 'название'
/


--
-- PK_TNAZSOS_CON  (Index) 
--
--  Dependencies: 
--   TNAZSOS (Table)
--
CREATE UNIQUE INDEX ASU.PK_TNAZSOS_CON ON ASU.TNAZSOS
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
-- TNAZSOS_FC_NAME  (Index) 
--
--  Dependencies: 
--   TNAZSOS (Table)
--
CREATE INDEX ASU.TNAZSOS_FC_NAME ON ASU.TNAZSOS
(FC_NAME)
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
-- TNAZSOS_INSERT  (Trigger) 
--
--  Dependencies: 
--   TNAZSOS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZSOS_INSERT" 
  BEFORE INSERT
  ON ASU.TNAZSOS   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
DISABLE
Begin
  select SEQ_TNAZSOS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TNAZSOS 
-- 
ALTER TABLE ASU.TNAZSOS ADD (
  CONSTRAINT PK_TNAZSOS_CON
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

