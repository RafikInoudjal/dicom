DROP TABLE ASU.TSMID_MODALITY CASCADE CONSTRAINTS
/

--
-- TSMID_MODALITY  (Table) 
--
CREATE TABLE ASU.TSMID_MODALITY
(
  FK_SMID      NUMBER,
  FK_MODALITY  NUMBER
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


--
-- TSMID_MODALITY_MODALITY  (Index) 
--
--  Dependencies: 
--   TSMID_MODALITY (Table)
--
CREATE INDEX ASU.TSMID_MODALITY_MODALITY ON ASU.TSMID_MODALITY
(FK_MODALITY)
NOLOGGING
TABLESPACE INDX
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
-- TSMID_MODALITY_SMID  (Index) 
--
--  Dependencies: 
--   TSMID_MODALITY (Table)
--
CREATE UNIQUE INDEX ASU.TSMID_MODALITY_SMID ON ASU.TSMID_MODALITY
(FK_SMID)
NOLOGGING
TABLESPACE INDX
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


