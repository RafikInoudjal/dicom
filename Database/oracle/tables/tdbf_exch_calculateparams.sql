DROP TABLE ASU.TDBF_EXCH_CALCULATEPARAMS CASCADE CONSTRAINTS
/

--
-- TDBF_EXCH_CALCULATEPARAMS  (Table) 
--
CREATE TABLE ASU.TDBF_EXCH_CALCULATEPARAMS
(
  FD_BEG               DATE,
  FD_END               DATE,
  FL_ADDUNEXSLUCH      NUMBER,
  FL_OMS_ONLY          NUMBER,
  FL_ADDSLUCHBYYEAR    NUMBER,
  FN_SLUCHTYPE         NUMBER,
  FN_OWN               NUMBER,
  FL_USEMODERNFOROWN2  NUMBER,
  FN_PERIOD            NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
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

COMMENT ON TABLE ASU.TDBF_EXCH_CALCULATEPARAMS IS '������ ���������� ��� �������������� �������� Author:Efimov'
/


