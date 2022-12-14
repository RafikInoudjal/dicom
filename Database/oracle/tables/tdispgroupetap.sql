ALTER TABLE ASU.TDISPGROUPETAP
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TDISPGROUPETAP CASCADE CONSTRAINTS
/

--
-- TDISPGROUPETAP  (Table) 
--
CREATE TABLE ASU.TDISPGROUPETAP
(
  FK_ID               NUMBER,
  FK_ETAPID           NUMBER,
  FK_DISPGROUPDIAGID  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
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

COMMENT ON COLUMN ASU.TDISPGROUPETAP.FK_DISPGROUPDIAGID IS 'TDISPGROUPDIAG.FK_ID'
/


--
-- TDETAP_FK_DISPGRUOPDIAGID  (Index) 
--
--  Dependencies: 
--   TDISPGROUPETAP (Table)
--
CREATE INDEX ASU.TDETAP_FK_DISPGRUOPDIAGID ON ASU.TDISPGROUPETAP
(FK_DISPGROUPDIAGID)
NOLOGGING
TABLESPACE USR
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
-- TDETAP_FK_ETAPID  (Index) 
--
--  Dependencies: 
--   TDISPGROUPETAP (Table)
--
CREATE INDEX ASU.TDETAP_FK_ETAPID ON ASU.TDISPGROUPETAP
(FK_ETAPID)
NOLOGGING
TABLESPACE USR
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
-- TDETAP_FK_ID  (Index) 
--
--  Dependencies: 
--   TDISPGROUPETAP (Table)
--
CREATE UNIQUE INDEX ASU.TDETAP_FK_ID ON ASU.TDISPGROUPETAP
(FK_ID)
NOLOGGING
TABLESPACE USR
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
-- TDISPGROUPETAP_INSERT  (Trigger) 
--
--  Dependencies: 
--   TDISPGROUPETAP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDISPGROUPETAP_INSERT" 
  BEFORE INSERT
  ON ASU.TDISPGROUPETAP   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TDISPGROUPETAP.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TDISPGROUPETAP 
-- 
ALTER TABLE ASU.TDISPGROUPETAP ADD (
  CONSTRAINT TDISPGROUPETAP_FK_KEY
 PRIMARY KEY
 (FK_ID))
/

