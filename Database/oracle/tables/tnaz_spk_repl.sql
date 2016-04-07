DROP TABLE ASU.TNAZ_SPK_REPL CASCADE CONSTRAINTS
/

--
-- TNAZ_SPK_REPL  (Table) 
--
CREATE TABLE ASU.TNAZ_SPK_REPL
(
  FK_NAZ_GUID  VARCHAR2(32 BYTE),
  FD_INSERT    DATE
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


