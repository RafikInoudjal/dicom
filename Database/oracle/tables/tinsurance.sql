ALTER TABLE ASU.TINSURANCE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TINSURANCE CASCADE CONSTRAINTS
/

--
-- TINSURANCE  (Table) 
--
CREATE TABLE ASU.TINSURANCE
(
  FK_ID         NUMBER(15)                      NOT NULL,
  FK_PEPLID     NUMBER(15),
  FC_SER        VARCHAR2(15 BYTE),
  FC_NUM        VARCHAR2(15 BYTE),
  FC_DOGOVOR    VARCHAR2(10 BYTE),
  FK_COMPANYID  NUMBER(15),
  FL_OLD        NUMBER(1)                       DEFAULT 0,
  FD_DATE       DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          8120K
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

COMMENT ON TABLE ASU.TINSURANCE IS '??????? ? ??????? ? ???????????  '
/

COMMENT ON COLUMN ASU.TINSURANCE.FK_ID IS 'SEQUENCE=[SEQ_TINSURANCE]'
/

COMMENT ON COLUMN ASU.TINSURANCE.FK_PEPLID IS '??? ????????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FC_SER IS '?????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FC_NUM IS '?????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FC_DOGOVOR IS '????? ???? ??? ????????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FK_COMPANYID IS '??? ???????????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FL_OLD IS '?????????'
/

COMMENT ON COLUMN ASU.TINSURANCE.FD_DATE IS '???? ??????'
/


--
-- TINSURANCE_BY_COMPANY  (Index) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE INDEX ASU.TINSURANCE_BY_COMPANY ON ASU.TINSURANCE
(FK_COMPANYID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4992K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TINSURANCE_BY_ID  (Index) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE UNIQUE INDEX ASU.TINSURANCE_BY_ID ON ASU.TINSURANCE
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2688K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TINSURANCE_BY_OLD  (Index) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE INDEX ASU.TINSURANCE_BY_OLD ON ASU.TINSURANCE
(FL_OLD, FK_PEPLID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          7296K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TINSURANCE_BY_PACID  (Index) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE INDEX ASU.TINSURANCE_BY_PACID ON ASU.TINSURANCE
(FK_PEPLID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3840K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TINSURANCE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSURANCE_BEFORE_INSERT" 
BEFORE INSERT
ON tinsurance
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
Begin
  SELECT SEQ_TINSURANCE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


--
-- TINSURANCE_LOG  (Trigger) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSURANCE_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TINSURANCE  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TINSURANCE', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TINSURANCE', 'FK_PEPLID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_peplid), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TINSURANCE', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURANCE', 'FK_PEPLID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_peplid), null, :old.fk_id);
  end if;
  null;
END TINSURANCE_LOG;
/
SHOW ERRORS;


DROP SYNONYM BUH.TINSURANCE
/

--
-- TINSURANCE  (Synonym) 
--
--  Dependencies: 
--   TINSURANCE (Table)
--
CREATE SYNONYM BUH.TINSURANCE FOR ASU.TINSURANCE
/


-- 
-- Non Foreign Key Constraints for Table TINSURANCE 
-- 
ALTER TABLE ASU.TINSURANCE ADD (
  CONSTRAINT TINSURANCE_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          2688K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

