DROP INDEX ASU.I_TREPLYTABLE_TABLES
/

--
-- I_TREPLYTABLE_TABLES  (Index) 
--
CREATE INDEX ASU.I_TREPLYTABLE_TABLES ON ASU.TREPLYTABLE
(FC_ASK, FC_REPLY)
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


