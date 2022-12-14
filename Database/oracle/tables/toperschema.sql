DROP TABLE ASU.TOPERSCHEMA CASCADE CONSTRAINTS
/

--
-- TOPERSCHEMA  (Table) 
--
CREATE TABLE ASU.TOPERSCHEMA
(
  FK_ID    NUMBER                               NOT NULL,
  FC_NAME  VARCHAR2(4000 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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

COMMENT ON TABLE ASU.TOPERSCHEMA IS '??????? ??? ???????????? ???? ?????????'
/

COMMENT ON COLUMN ASU.TOPERSCHEMA.FK_ID IS '?????????? ???'
/

COMMENT ON COLUMN ASU.TOPERSCHEMA.FC_NAME IS '????????????'
/


--
-- TOPERSCHEMA_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TOPERSCHEMA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TOPERSCHEMA_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TOPERSCHEMA   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select seq_TOPERSCHEMA.nextval into :new.fk_id from dual;
End;
/
SHOW ERRORS;


