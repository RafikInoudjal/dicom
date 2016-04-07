ALTER TABLE ASU.TEXP_VNAZ
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TEXP_VNAZ CASCADE CONSTRAINTS
/

--
-- TEXP_VNAZ  (Table) 
--
CREATE TABLE ASU.TEXP_VNAZ
(
  FK_ID           NUMBER(15)                    NOT NULL,
  FK_NAZID        NUMBER(15),
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
-- PK_TEXP_VANZ  (Index) 
--
--  Dependencies: 
--   TEXP_VNAZ (Table)
--
CREATE UNIQUE INDEX ASU.PK_TEXP_VANZ ON ASU.TEXP_VNAZ
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
-- TEXP_VNAZ_BI  (Trigger) 
--
--  Dependencies: 
--   TEXP_VNAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_VNAZ_BI
 BEFORE INSERT
 ON ASU.TEXP_VNAZ REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_VNAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_VNAZ_BI;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TEXP_VNAZ 
-- 
ALTER TABLE ASU.TEXP_VNAZ ADD (
  CONSTRAINT PK_TEXP_VANZ
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

