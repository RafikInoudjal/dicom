DROP TABLE ASU.TDIALIZ_NAZMED_SHABLON CASCADE CONSTRAINTS
/

--
-- TDIALIZ_NAZMED_SHABLON  (Table) 
--
CREATE TABLE ASU.TDIALIZ_NAZMED_SHABLON
(
  FK_ID                    NUMBER(10)           NOT NULL,
  FK_DIALIZ_KARTA_SHABLON  NUMBER(10),
  FK_VVODPATHID            NUMBER(10),
  FN_DURATION              INTEGER,
  FK_STATE                 NUMBER(10),
  FK_TREB                  NUMBER(10),
  FK_FREQUENCYID           NUMBER(10),
  FC_REMARK                VARCHAR2(1000 BYTE),
  FK_NAZTYPEID             NUMBER(10),
  FP_DURATION_TYPE         NUMBER               DEFAULT 1,
  FL_IN_RASPIS             NUMBER(1)            DEFAULT 0,
  FK_ROOMID                NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1568K
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
-- TDIALIZ_NAZMED_SHABLON_BI  (Trigger) 
--
--  Dependencies: 
--   TDIALIZ_NAZMED_SHABLON (Table)
--
CREATE OR REPLACE TRIGGER ASU.TDIALIZ_NAZMED_SHABLON_BI
  BEFORE INSERT ON ASU.TDIALIZ_NAZMED_SHABLON   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TDIALIZ_NAZMED_SHABLON.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


