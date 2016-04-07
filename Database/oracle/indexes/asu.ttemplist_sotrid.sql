DROP INDEX ASU.TTEMPLIST_SOTRID
/

--
-- TTEMPLIST_SOTRID  (Index) 
--
CREATE INDEX ASU.TTEMPLIST_SOTRID ON ASU.TTEMPLIST
(FK_SOTRID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          5248K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


