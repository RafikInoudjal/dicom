DROP INDEX ASU.IDX_SMID_KONS_SPEC_ID
/

--
-- IDX_SMID_KONS_SPEC_ID  (Index) 
--
CREATE INDEX ASU.IDX_SMID_KONS_SPEC_ID ON ASU.TSMID_KONS_SPEC
(FK_ID)
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


