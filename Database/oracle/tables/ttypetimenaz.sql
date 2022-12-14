ALTER TABLE ASU.TTYPETIMENAZ
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TTYPETIMENAZ CASCADE CONSTRAINTS
/

--
-- TTYPETIMENAZ  (Table) 
--
CREATE TABLE ASU.TTYPETIMENAZ
(
  FK_ID          NUMBER,
  FK_TYPETIMEID  NUMBER,
  FK_SMNAZID     NUMBER
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

COMMENT ON COLUMN ASU.TTYPETIMENAZ.FK_TYPETIMEID IS 'TTYPETIME.FK_ID'
/

COMMENT ON COLUMN ASU.TTYPETIMENAZ.FK_SMNAZID IS 'TSMID.FK_ID'
/


--
-- TTYPETIMENAZ_FK_ID  (Index) 
--
--  Dependencies: 
--   TTYPETIMENAZ (Table)
--
CREATE UNIQUE INDEX ASU.TTYPETIMENAZ_FK_ID ON ASU.TTYPETIMENAZ
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
-- TTYPETIMENAZ_INSERT  (Trigger) 
--
--  Dependencies: 
--   TTYPETIMENAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTYPETIMENAZ_INSERT" 
  BEFORE INSERT
  ON ASU.TTYPETIMENAZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TTYPETIMENAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TTYPETIMENAZ 
-- 
ALTER TABLE ASU.TTYPETIMENAZ ADD (
  CONSTRAINT TTYPETIMENAZ_FK_ID
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

