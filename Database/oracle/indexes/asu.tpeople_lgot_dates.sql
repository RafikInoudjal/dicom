DROP INDEX ASU.TPEOPLE_LGOT_DATES
/

--
-- TPEOPLE_LGOT_DATES  (Index) 
--
CREATE INDEX ASU.TPEOPLE_LGOT_DATES ON ASU.TPEOPLE_LGOT
(FD_BEGIN, FD_END)
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


