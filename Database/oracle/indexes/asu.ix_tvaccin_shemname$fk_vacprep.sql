DROP INDEX ASU.IX_TVACCIN_SHEMNAME$FK_VACPREP
/

--
-- IX_TVACCIN_SHEMNAME$FK_VACPREP  (Index) 
--
CREATE INDEX ASU.IX_TVACCIN_SHEMNAME$FK_VACPREP ON ASU.TVACCIN_SHEMNAME
(FK_VACPREP)
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


