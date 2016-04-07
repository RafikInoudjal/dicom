DROP INDEX ASU.TDEZHUR_DATE_SPEC
/

--
-- TDEZHUR_DATE_SPEC  (Index) 
--
CREATE INDEX ASU.TDEZHUR_DATE_SPEC ON ASU.TDEZHUR
(FK_DEZHURSPECID, FD_DATE)
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


