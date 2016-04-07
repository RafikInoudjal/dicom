DROP TABLE ASU.TOKRUGNIK_OLD_11_02_2011 CASCADE CONSTRAINTS
/

--
-- TOKRUGNIK_OLD_11_02_2011  (Table) 
--
CREATE TABLE ASU.TOKRUGNIK_OLD_11_02_2011
(
  GLOBAL_ID   NUMBER,
  SMK_ID_P    NUMBER,
  SMK_ID      NUMBER,
  FAM         VARCHAR2(25 BYTE),
  IM          VARCHAR2(25 BYTE),
  OTCH        VARCHAR2(25 BYTE),
  DATE_B_DAY  DATE,
  POL         VARCHAR2(1 BYTE),
  CITY        VARCHAR2(40 BYTE),
  POLICYSER   VARCHAR2(10 BYTE),
  POLICYNUM   VARCHAR2(16 BYTE),
  DATE_BEGIN  DATE,
  DATE_END    DATE,
  DATE_ANUL   DATE,
  ANUL_KOD    NUMBER,
  DATE_GIVE   DATE,
  DATE_UPD    DATE,
  SOC_NAME_T  NUMBER,
  YEAR        NUMBER,
  MONTH       NUMBER,
  TMP_PER     VARCHAR2(10 BYTE),
  REGNFOMS    VARCHAR2(20 BYTE),
  CONSENT     DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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


