DROP INDEX ASU.TINSURDOCS_BY_FD_BEG
/

--
-- TINSURDOCS_BY_FD_BEG  (Index) 
--
CREATE INDEX ASU.TINSURDOCS_BY_FD_BEG ON ASU.TINSURDOCS
(FD_BEGIN)
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


