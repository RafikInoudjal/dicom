DROP INDEX ASU.TSMID_MODALITY_MODALITY
/

--
-- TSMID_MODALITY_MODALITY  (Index) 
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


