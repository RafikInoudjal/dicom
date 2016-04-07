DROP INDEX ASU.TRECIPE_DLO_EXP_REG_KATL_C_KAT
/

--
-- TRECIPE_DLO_EXP_REG_KATL_C_KAT  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_EXP_REG_KATL_C_KAT ON ASU.TRECIPE_DLO_EXP_REG_KATL
(C_KAT)
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


