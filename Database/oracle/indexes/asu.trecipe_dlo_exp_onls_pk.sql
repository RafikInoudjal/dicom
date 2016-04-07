DROP INDEX ASU.TRECIPE_DLO_EXP_ONLS_PK
/

--
-- TRECIPE_DLO_EXP_ONLS_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_EXP_ONLS_PK ON ASU.TRECIPE_DLO_EXP_ONLS
(C_FINL, C_PROG)
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


