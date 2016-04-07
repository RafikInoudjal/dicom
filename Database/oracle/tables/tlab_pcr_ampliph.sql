DROP TABLE ASU.TLAB_PCR_AMPLIPH CASCADE CONSTRAINTS
/

--
-- TLAB_PCR_AMPLIPH  (Table) 
--
CREATE TABLE ASU.TLAB_PCR_AMPLIPH
(
  FK_ID        NUMBER,
  FK_REGISTID  NUMBER,
  FK_PROGID    NUMBER
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

COMMENT ON COLUMN ASU.TLAB_PCR_AMPLIPH.FK_REGISTID IS 'TLAB_PCR_REGIST.FK_ID'
/

COMMENT ON COLUMN ASU.TLAB_PCR_AMPLIPH.FK_PROGID IS 'TLAB_PCR_PROGRAMM.FK_ID'
/


