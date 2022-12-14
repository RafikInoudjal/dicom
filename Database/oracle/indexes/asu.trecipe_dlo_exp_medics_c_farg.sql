DROP INDEX ASU.TRECIPE_DLO_EXP_MEDICS_C_FARG
/

--
-- TRECIPE_DLO_EXP_MEDICS_C_FARG  (Index) 
--
CREATE INDEX ASU.TRECIPE_DLO_EXP_MEDICS_C_FARG ON ASU.TRECIPE_DLO_EXP_MEDICS
(C_FARG)
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


