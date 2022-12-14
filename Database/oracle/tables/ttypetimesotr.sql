ALTER TABLE ASU.TTYPETIMESOTR
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TTYPETIMESOTR CASCADE CONSTRAINTS
/

--
-- TTYPETIMESOTR  (Table) 
--
CREATE TABLE ASU.TTYPETIMESOTR
(
  FK_ID          NUMBER,
  FK_TYPETIMEID  NUMBER,
  FK_SOTRID      NUMBER
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

COMMENT ON COLUMN ASU.TTYPETIMESOTR.FK_TYPETIMEID IS 'TTYPETIME.FK_ID'
/

COMMENT ON COLUMN ASU.TTYPETIMESOTR.FK_SOTRID IS 'TSOTR.FK_ID'
/


--
-- TTYPETIMSOTRE_FK_ID  (Index) 
--
--  Dependencies: 
--   TTYPETIMESOTR (Table)
--
CREATE UNIQUE INDEX ASU.TTYPETIMSOTRE_FK_ID ON ASU.TTYPETIMESOTR
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
-- TTYPETIMESOTR_INSERT  (Trigger) 
--
--  Dependencies: 
--   TTYPETIMESOTR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTYPETIMESOTR_INSERT" 
  BEFORE INSERT
  ON ASU.TTYPETIMESOTR   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TTYPETIMESOTR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TTYPETIMESOTR 
-- 
ALTER TABLE ASU.TTYPETIMESOTR ADD (
  CONSTRAINT TTYPETIMSOTRE_FK_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/

