DROP TABLE ASU.TNAPR_SMID CASCADE CONSTRAINTS
/

--
-- TNAPR_SMID  (Table) 
--
CREATE TABLE ASU.TNAPR_SMID
(
  FK_SMID  NUMBER,
  FK_NAPR  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


