DROP INDEX ASU.I_TEXCHSLUCH_ERR_STOR_ID_ILL
/

--
-- I_TEXCHSLUCH_ERR_STOR_ID_ILL  (Index) 
--
CREATE INDEX ASU.I_TEXCHSLUCH_ERR_STOR_ID_ILL ON ASU.TEXSLUCH_ERR_STOR
(LPU_ID, P_ID_ILL)
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


