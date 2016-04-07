DROP INDEX ASU.TRECIPE_DLO_REG_PAC_UNIQ
/

--
-- TRECIPE_DLO_REG_PAC_UNIQ  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_REG_PAC_UNIQ ON ASU.TRECIPE_DLO_REG_PAC
(UNIQCODE)
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


