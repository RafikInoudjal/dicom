DROP INDEX ASU.TPROFP_ACTIONS_BY_LIST
/

--
-- TPROFP_ACTIONS_BY_LIST  (Index) 
--
CREATE INDEX ASU.TPROFP_ACTIONS_BY_LIST ON ASU.TPROFP_ACTIONS
(FL_ISLIST)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


