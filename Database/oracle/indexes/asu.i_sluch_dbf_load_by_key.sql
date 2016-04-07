DROP INDEX ASU.I_SLUCH_DBF_LOAD_BY_KEY
/

--
-- I_SLUCH_DBF_LOAD_BY_KEY  (Index) 
--
CREATE UNIQUE INDEX ASU.I_SLUCH_DBF_LOAD_BY_KEY ON ASU.TSLUCH_DBF_LOAD
(YEAR, MONTH, LPU_ID, ID_ILL, P_ID_ILL)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


