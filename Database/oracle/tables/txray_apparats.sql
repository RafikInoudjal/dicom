DROP TABLE ASU.TXRAY_APPARATS CASCADE CONSTRAINTS
/

--
-- TXRAY_APPARATS  (Table) 
--
CREATE TABLE ASU.TXRAY_APPARATS
(
  FK_ID       NUMBER                            NOT NULL,
  FC_NAME     VARCHAR2(255 BYTE),
  FC_AETITLE  VARCHAR2(255 BYTE),
  FC_IP       VARCHAR2(20 BYTE),
  FK_KABINET  NUMBER
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


--
-- TXRAY_APPARATS_KABINETID  (Index) 
--
--  Dependencies: 
--   TXRAY_APPARATS (Table)
--
CREATE UNIQUE INDEX ASU.TXRAY_APPARATS_KABINETID ON ASU.TXRAY_APPARATS
(FK_KABINET)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TXRAY_APPARATS_UID  (Index) 
--
--  Dependencies: 
--   TXRAY_APPARATS (Table)
--
CREATE UNIQUE INDEX ASU.TXRAY_APPARATS_UID ON ASU.TXRAY_APPARATS
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TXRAY_APPARATS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TXRAY_APPARATS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TXRAY_APPARATS_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.txray_apparats
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  select seq_txray_apparats.nextval into :new.fk_id from dual;
end;
/
SHOW ERRORS;


