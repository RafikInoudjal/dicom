DROP INDEX ASU.TADR_HIST_BY_ID
/

--
-- TADR_HIST_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TADR_HIST_BY_ID ON ASU.TADR_HISTORY
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3328K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


