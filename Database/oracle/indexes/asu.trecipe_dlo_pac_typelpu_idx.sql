DROP INDEX ASU.TRECIPE_DLO_PAC_TYPELPU_IDX
/

--
-- TRECIPE_DLO_PAC_TYPELPU_IDX  (Index) 
--
CREATE INDEX ASU.TRECIPE_DLO_PAC_TYPELPU_IDX ON ASU.TRECIPE_DLO_PAC_TYPELPU
(FK_REGPACID, FK_LPU)
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


