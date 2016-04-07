ALTER TABLE ASU.TSMIDCHECKFORKARTA
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSMIDCHECKFORKARTA CASCADE CONSTRAINTS
/

--
-- TSMIDCHECKFORKARTA  (Table) 
--
CREATE TABLE ASU.TSMIDCHECKFORKARTA
(
  FK_SMID     NUMBER                            NOT NULL,
  FK_PACID    NUMBER                            NOT NULL,
  FK_OTDELID  NUMBER
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

COMMENT ON TABLE ASU.TSMIDCHECKFORKARTA IS '������� ��� �������� ������ � �������������� � ����������� ����������@Marriage at 16.11.2009'
/

COMMENT ON COLUMN ASU.TSMIDCHECKFORKARTA.FK_SMID IS 'asu.TSmid.FK_ID'
/

COMMENT ON COLUMN ASU.TSMIDCHECKFORKARTA.FK_PACID IS 'asu.TKARTA.FK_ID'
/

COMMENT ON COLUMN ASU.TSMIDCHECKFORKARTA.FK_OTDELID IS ' asu.Totdel.FK_ID'
/


--
-- PK_SMIDCHECKFORKARTA  (Index) 
--
--  Dependencies: 
--   TSMIDCHECKFORKARTA (Table)
--
CREATE UNIQUE INDEX ASU.PK_SMIDCHECKFORKARTA ON ASU.TSMIDCHECKFORKARTA
(FK_SMID, FK_PACID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


-- 
-- Non Foreign Key Constraints for Table TSMIDCHECKFORKARTA 
-- 
ALTER TABLE ASU.TSMIDCHECKFORKARTA ADD (
  CONSTRAINT PK_SMIDCHECKFORKARTA
 PRIMARY KEY
 (FK_SMID, FK_PACID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

