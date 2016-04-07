DROP TABLE ASU.TMP_TALONNAZ_010110 CASCADE CONSTRAINTS
/

--
-- TMP_TALONNAZ_010110  (Table) 
--
CREATE TABLE ASU.TMP_TALONNAZ_010110
(
  FK_NAZID    NUMBER,
  FK_TALONID  NUMBER
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


