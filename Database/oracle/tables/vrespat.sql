DROP TABLE ASU.VRESPAT CASCADE CONSTRAINTS
/

--
-- VRESPAT  (Table) 
--
CREATE TABLE ASU.VRESPAT
(
  FK_NAZID     NUMBER(15),
  FK_NAZSOSID  NUMBER(15),
  FD_INS       DATE,
  FK_RAZDID    NUMBER,
  FK_PACID     NUMBER(15),
  FN_VOZR      NUMBER,
  FN_ED        NUMBER(5,2),
  FL_PATFIRST  NUMBER(1),
  FL_AMB       NUMBER,
  FK_OTDELID   NUMBER,
  FK_SMID      NUMBER,
  FK_NAPRID    NUMBER,
  FD_OUT       DATE
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
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


