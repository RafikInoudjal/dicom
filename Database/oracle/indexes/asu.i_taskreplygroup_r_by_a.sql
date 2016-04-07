DROP INDEX ASU.I_TASKREPLYGROUP_R_BY_A
/

--
-- I_TASKREPLYGROUP_R_BY_A  (Index) 
--
CREATE UNIQUE INDEX ASU.I_TASKREPLYGROUP_R_BY_A ON ASU.TASKREPLYGROUP
(FC_REPLY, FC_REPLYFIELD, FC_ASK, FC_ASKFIELD)
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


