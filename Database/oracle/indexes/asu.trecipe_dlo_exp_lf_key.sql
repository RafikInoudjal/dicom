DROP INDEX ASU.TRECIPE_DLO_EXP_LF_KEY
/

--
-- TRECIPE_DLO_EXP_LF_KEY  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_EXP_LF_KEY ON ASU.TRECIPE_DLO_EXP_LF
(C_LF, C_FINL)
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


