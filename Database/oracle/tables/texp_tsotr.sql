ALTER TABLE ASU.TEXP_TSOTR
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TEXP_TSOTR CASCADE CONSTRAINTS
/

--
-- TEXP_TSOTR  (Table) 
--
CREATE TABLE ASU.TEXP_TSOTR
(
  FK_ID           NUMBER(15)                    NOT NULL,
  FK_SOTRID       NUMBER(15),
  FK_EX_ID1       VARCHAR2(36 BYTE),
  FK_EX_ID2       VARCHAR2(36 BYTE),
  FD_LAST_UPDATE  DATE                          DEFAULT SYSDATE,
  FD_EXPORT_DATE  DATE,
  FP_DEL          NUMBER(1)                     DEFAULT 0
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
-- PK_TEXP_TSOTR  (Index) 
--
--  Dependencies: 
--   TEXP_TSOTR (Table)
--
CREATE UNIQUE INDEX ASU.PK_TEXP_TSOTR ON ASU.TEXP_TSOTR
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
-- TEXP_TSOTR_BI  (Trigger) 
--
--  Dependencies: 
--   TEXP_TSOTR (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_TSOTR_BI
 BEFORE INSERT
 ON ASU.TEXP_TSOTR REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_TSOTR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_TSOTR_BI;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TEXP_TSOTR 
-- 
ALTER TABLE ASU.TEXP_TSOTR ADD (
  CONSTRAINT PK_TEXP_TSOTR
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

GRANT DELETE, INSERT, SELECT, UPDATE ON ASU.TEXP_TSOTR TO LOGIN
/

