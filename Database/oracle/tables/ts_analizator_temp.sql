DROP TABLE ASU.TS_ANALIZATOR_TEMP CASCADE CONSTRAINTS
/

--
-- TS_ANALIZATOR_TEMP  (Table) 
--
CREATE TABLE ASU.TS_ANALIZATOR_TEMP
(
  FK_ID             NUMBER                      NOT NULL,
  FC_NAME           VARCHAR2(255 BYTE),
  FC_CLSID          VARCHAR2(150 BYTE),
  FC_MODE           VARCHAR2(150 BYTE),
  FC_DRIVERID       VARCHAR2(150 BYTE),
  FC_DEBUG          VARCHAR2(150 BYTE),
  FC_EVENTINTERVAL  VARCHAR2(150 BYTE),
  FC_SPLITCOUNT     VARCHAR2(150 BYTE),
  FK_PORTNUMBER     NUMBER(5),
  FC_HOST           VARCHAR2(15 BYTE),
  FL_TYPE           NUMBER,
  FN_TYPE           NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
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


