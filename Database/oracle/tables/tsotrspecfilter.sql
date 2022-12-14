ALTER TABLE ASU.TSOTRSPECFILTER
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSOTRSPECFILTER CASCADE CONSTRAINTS
/

--
-- TSOTRSPECFILTER  (Table) 
--
CREATE TABLE ASU.TSOTRSPECFILTER
(
  FK_ID      NUMBER                             NOT NULL,
  FK_SOTRID  NUMBER,
  FK_SPECID  NUMBER
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
-- PK_SOTRSPECFILTER  (Index) 
--
--  Dependencies: 
--   TSOTRSPECFILTER (Table)
--
CREATE UNIQUE INDEX ASU.PK_SOTRSPECFILTER ON ASU.TSOTRSPECFILTER
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
-- TSOTRSPECFILTER_FK_SOTR_ID  (Index) 
--
--  Dependencies: 
--   TSOTRSPECFILTER (Table)
--
CREATE INDEX ASU.TSOTRSPECFILTER_FK_SOTR_ID ON ASU.TSOTRSPECFILTER
(FK_SOTRID)
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
-- TSOTRSPECFILTER_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSOTRSPECFILTER (Table)
--
CREATE OR REPLACE TRIGGER ASU.TSOTRSPECFILTER_BEFORE_INSERT
 BEFORE
 INSERT
 ON ASU.TSOTRSPECFILTER  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
 SELECT ASU.SEQ_TSOTRSPECFILTER.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSOTRSPECFILTER 
-- 
ALTER TABLE ASU.TSOTRSPECFILTER ADD (
  CONSTRAINT PK_SOTRSPECFILTER
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

