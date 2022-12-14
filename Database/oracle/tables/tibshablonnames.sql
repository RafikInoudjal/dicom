DROP TABLE ASU.TIBSHABLONNAMES CASCADE CONSTRAINTS
/

--
-- TIBSHABLONNAMES  (Table) 
--
CREATE TABLE ASU.TIBSHABLONNAMES
(
  FK_ID       NUMBER(15),
  FC_NAME     VARCHAR2(100 BYTE),
  FK_FORMID   NUMBER(15),
  FK_VRACHID  NUMBER(15)
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

COMMENT ON TABLE ASU.TIBSHABLONNAMES IS '?????????? ???? ????????'
/

COMMENT ON COLUMN ASU.TIBSHABLONNAMES.FK_ID IS 'SEQUENCE=[SEQ_TIBSHABLONNAMES]'
/

COMMENT ON COLUMN ASU.TIBSHABLONNAMES.FC_NAME IS '???????? ???????'
/

COMMENT ON COLUMN ASU.TIBSHABLONNAMES.FK_FORMID IS '??? ? TIBSHABLONES'
/

COMMENT ON COLUMN ASU.TIBSHABLONNAMES.FK_VRACHID IS '????, ????????? ???'
/


--
-- TIBSHABLONNAMES_BY  (Index) 
--
--  Dependencies: 
--   TIBSHABLONNAMES (Table)
--
CREATE INDEX ASU.TIBSHABLONNAMES_BY ON ASU.TIBSHABLONNAMES
(FK_VRACHID, FK_FORMID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TIBSHABLONNAMES_BY_ID  (Index) 
--
--  Dependencies: 
--   TIBSHABLONNAMES (Table)
--
CREATE UNIQUE INDEX ASU.TIBSHABLONNAMES_BY_ID ON ASU.TIBSHABLONNAMES
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TIBSHABLONNAMES_DELETE  (Trigger) 
--
--  Dependencies: 
--   TIBSHABLONNAMES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TIBSHABLONNAMES_DELETE" 
  AFTER DELETE
  ON ASU.TIBSHABLONNAMES   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  delete from tibshablons where fk_shablonnamesid=:old.fk_id;
End;
/
SHOW ERRORS;


--
-- TIBSHABLONNAMES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TIBSHABLONNAMES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TIBSHABLONNAMES_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TIBSHABLONNAMES   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select seq_tibshablonnames.nextval into :new.fk_id from dual;
End;
/
SHOW ERRORS;


