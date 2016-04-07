DROP INDEX ASU.IX_TLABREPTEST_IS_FK_LABREPNAM
/

--
-- IX_TLABREPTEST_IS_FK_LABREPNAM  (Index) 
--
CREATE INDEX ASU.IX_TLABREPTEST_IS_FK_LABREPNAM ON ASU.TLABREPTEST_INISMID
(FK_LABREPNAME)
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


