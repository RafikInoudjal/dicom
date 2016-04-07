DROP INDEX ASU.TNAZGROUP_BY_SMID_DATE_NAZ_PRO
/

--
-- TNAZGROUP_BY_SMID_DATE_NAZ_PRO  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZGROUP_BY_SMID_DATE_NAZ_PRO ON ASU.TNAZGROUP
(FK_SMID, FD_REGIST, FK_NAZID, FN_PROBE)
NOLOGGING
TABLESPACE INDX
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


