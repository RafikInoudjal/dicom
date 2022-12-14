ALTER TABLE ASU.TKLADR_ALTNAMES
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TKLADR_ALTNAMES CASCADE CONSTRAINTS
/

--
-- TKLADR_ALTNAMES  (Table) 
--
CREATE TABLE ASU.TKLADR_ALTNAMES
(
  FK_ID        INTEGER                          NOT NULL,
  FC_OLDCODE   VARCHAR2(20 BYTE),
  FC_NEWCODE   VARCHAR2(20 BYTE),
  FN_LEVEL     INTEGER,
  FC_OLDNAME   VARCHAR2(100 BYTE),
  FC_NEWNAME   VARCHAR2(100 BYTE),
  NEED_UPDATE  INTEGER,
  IS_51        INTEGER,
  FC_ACTION    VARCHAR2(50 BYTE)
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

COMMENT ON TABLE ASU.TKLADR_ALTNAMES IS 'Author:Linnikov'
/


--
-- TKLADR_ALTNAMES_PK  (Index) 
--
--  Dependencies: 
--   TKLADR_ALTNAMES (Table)
--
CREATE UNIQUE INDEX ASU.TKLADR_ALTNAMES_PK ON ASU.TKLADR_ALTNAMES
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
-- TKLADR_ALTNAMES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TKLADR_ALTNAMES (Table)
--
CREATE OR REPLACE TRIGGER ASU.tkladr_altnames_before_insert
 BEFORE
  INSERT
 ON ASU.TKLADR_ALTNAMES REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_TKLADR_ALTNAMES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TKLADR_ALTNAMES 
-- 
ALTER TABLE ASU.TKLADR_ALTNAMES ADD (
  CONSTRAINT TKLADR_ALTNAMES_PK
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

