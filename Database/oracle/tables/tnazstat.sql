DROP TABLE ASU.TNAZSTAT CASCADE CONSTRAINTS
/

--
-- TNAZSTAT  (Table) 
--
CREATE TABLE ASU.TNAZSTAT
(
  FN_NUM     NUMBER,
  DIAGID     NUMBER(15),
  FC_DIAG    VARCHAR2(100 BYTE),
  FK_NAZID   NUMBER(15),
  FC_NAZ     VARCHAR2(100 BYTE),
  FK_DIAGID  NUMBER(15)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
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


