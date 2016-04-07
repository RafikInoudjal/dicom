DROP TABLE ASU.TDIALIZ_NAZ CASCADE CONSTRAINTS
/

--
-- TDIALIZ_NAZ  (Table) 
--
CREATE TABLE ASU.TDIALIZ_NAZ
(
  FK_ID               NUMBER                    NOT NULL,
  FK_SMID             NUMBER,
  FK_NAZID            NUMBER,
  FL_TYPE             NUMBER,
  FK_DIALIZ_KARTA_ID  NUMBER,
  FD_DATE             DATE
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

COMMENT ON COLUMN ASU.TDIALIZ_NAZ.FL_TYPE IS '0 - med, 1 - anal, 2 - ежедневное назначение'
/


--
-- I_TDIALIZ_NAZ_KARTA_ID  (Index) 
--
--  Dependencies: 
--   TDIALIZ_NAZ (Table)
--
CREATE INDEX ASU.I_TDIALIZ_NAZ_KARTA_ID ON ASU.TDIALIZ_NAZ
(FK_DIALIZ_KARTA_ID)
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
-- I_TDIALIZ_NAZ_NAZID  (Index) 
--
--  Dependencies: 
--   TDIALIZ_NAZ (Table)
--
CREATE INDEX ASU.I_TDIALIZ_NAZ_NAZID ON ASU.TDIALIZ_NAZ
(FK_NAZID)
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
-- TDIALIZ_NAZ_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TDIALIZ_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDIALIZ_NAZ_BEFORE_INSERT"
  BEFORE INSERT
  ON ASU.TDIALIZ_NAZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TDIALIZ_NAZ.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


