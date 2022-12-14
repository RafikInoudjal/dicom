DROP INDEX ASU.IX_TVAC_PLAN$FK_INFECT
/

--
-- IX_TVAC_PLAN$FK_INFECT  (Index) 
--
CREATE INDEX ASU.IX_TVAC_PLAN$FK_INFECT ON ASU.TVAC_PLAN
(FK_INFECTION)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


