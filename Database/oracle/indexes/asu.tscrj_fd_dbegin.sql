DROP INDEX ASU.TSCRJ_FD_DBEGIN
/

--
-- TSCRJ_FD_DBEGIN  (Index) 
--
CREATE INDEX ASU.TSCRJ_FD_DBEGIN ON ASU.TSCREENING_JOURNAL
(FD_DBEGIN)
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

