DROP TABLE ASU.TDIALIZ_NAZMEDLECH_SHABLON CASCADE CONSTRAINTS
/

--
-- TDIALIZ_NAZMEDLECH_SHABLON  (Table) 
--
CREATE TABLE ASU.TDIALIZ_NAZMEDLECH_SHABLON
(
  FK_ID              NUMBER(10)                 NOT NULL,
  FK_NAZMEDSHBLID    NUMBER(10)                 NOT NULL,
  FN_DOZA            NUMBER,
  FK_MEDICID         NUMBER(10),
  FC_REMARK          VARCHAR2(500 BYTE),
  FK_DOZUNITS        NUMBER(10),
  FN_KOL             NUMBER,
  FK_TREB_DPC        NUMBER(10),
  FK_MEDICID_BACKUP  NUMBER                     DEFAULT -1,
  FK_KOLUNITS        NUMBER,
  FN_PRICE           NUMBER,
  FN_SUMM            NUMBER,
  FN_CALCDOZA        NUMBER                     DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          736K
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
-- TDIALIZ_NAZMEDLECH_SHBL_BI  (Trigger) 
--
--  Dependencies: 
--   TDIALIZ_NAZMEDLECH_SHABLON (Table)
--
CREATE OR REPLACE TRIGGER ASU.TDIALIZ_NAZMEDLECH_SHBL_BI
  BEFORE INSERT ON ASU.TDIALIZ_NAZMEDLECH_SHABLON   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
BEGIN
  SELECT ASU.SEQ_TDIALIZ_NAZMEDLECH_SHABLON.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


