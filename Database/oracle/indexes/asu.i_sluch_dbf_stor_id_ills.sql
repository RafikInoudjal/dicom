DROP INDEX ASU.I_SLUCH_DBF_STOR_ID_ILLS
/

--
-- I_SLUCH_DBF_STOR_ID_ILLS  (Index) 
--
CREATE INDEX ASU.I_SLUCH_DBF_STOR_ID_ILLS ON ASU.TSLUCH_DBF_STOR
(ID_ILL, P_ID_ILL)
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


