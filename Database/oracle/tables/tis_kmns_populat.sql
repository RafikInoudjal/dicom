ALTER TABLE ASU.TIS_KMNS_POPULAT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_KMNS_POPULAT CASCADE CONSTRAINTS
/

--
-- TIS_KMNS_POPULAT  (Table) 
--
--  Dependencies: 
--   TIS_KMNS (Table)
--
CREATE TABLE ASU.TIS_KMNS_POPULAT
(
  FK_ID          NUMBER                         NOT NULL,
  FN_AGE         NUMBER,
  FK_SEXID       NUMBER,
  FK_IS_KMNS_ID  NUMBER
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
-- PK_TIS_KMNS_POPULAT  (Index) 
--
--  Dependencies: 
--   TIS_KMNS_POPULAT (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_KMNS_POPULAT ON ASU.TIS_KMNS_POPULAT
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
-- TIS_KMNS_POPULAT_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_KMNS_POPULAT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_KMNS_POPULAT_BI
  BEFORE INSERT
  ON ASU.TIS_KMNS_POPULAT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_KMNS_POPULAT.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_KMNS_POPULAT 
-- 
ALTER TABLE ASU.TIS_KMNS_POPULAT ADD (
  CONSTRAINT PK_TIS_KMNS_POPULAT
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

-- 
-- Foreign Key Constraints for Table TIS_KMNS_POPULAT 
-- 
ALTER TABLE ASU.TIS_KMNS_POPULAT ADD (
  CONSTRAINT FK_TIS_KMNS_REFERENCE_TIS_KMNS 
 FOREIGN KEY (FK_IS_KMNS_ID) 
 REFERENCES ASU.TIS_KMNS (FK_ID))
/

