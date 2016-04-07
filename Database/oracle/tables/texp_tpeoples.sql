ALTER TABLE ASU.TEXP_TPEOPLES
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TEXP_TPEOPLES CASCADE CONSTRAINTS
/

--
-- TEXP_TPEOPLES  (Table) 
--
CREATE TABLE ASU.TEXP_TPEOPLES
(
  FK_ID           NUMBER(15)                    NOT NULL,
  FK_PEPLID       NUMBER(15),
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
-- PK_TEXP_TPEP  (Index) 
--
--  Dependencies: 
--   TEXP_TPEOPLES (Table)
--
CREATE UNIQUE INDEX ASU.PK_TEXP_TPEP ON ASU.TEXP_TPEOPLES
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
-- TEXP_TPEOPLE_BI  (Trigger) 
--
--  Dependencies: 
--   TEXP_TPEOPLES (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_TPEOPLE_BI
 BEFORE INSERT
 ON ASU.TEXP_TPEOPLES REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_TPEOPLE.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_TPEOPLE_BI;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TEXP_TPEOPLES 
-- 
ALTER TABLE ASU.TEXP_TPEOPLES ADD (
  CONSTRAINT PK_TEXP_TPEP
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

