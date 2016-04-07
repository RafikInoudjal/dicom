DROP TABLE ASU.TTHERPOINTS_STREET CASCADE CONSTRAINTS
/

--
-- TTHERPOINTS_STREET  (Table) 
--
CREATE TABLE ASU.TTHERPOINTS_STREET
(
  FC_FULLSTREET   VARCHAR2(100 BYTE),
  FC_SHORTSTREET  VARCHAR2(100 BYTE),
  FK_KLADR        NUMBER
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


