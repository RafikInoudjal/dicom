DROP INDEX ASU.TDISPGROUPDIAG_FK_DISPGRUOPID
/

--
-- TDISPGROUPDIAG_FK_DISPGRUOPID  (Index) 
--
CREATE INDEX ASU.TDISPGROUPDIAG_FK_DISPGRUOPID ON ASU.TDISPGROUPDIAG
(FK_DISPGROUPID)
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


