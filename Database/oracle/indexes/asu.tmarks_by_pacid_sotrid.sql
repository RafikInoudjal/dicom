DROP INDEX ASU.TMARKS_BY_PACID_SOTRID
/

--
-- TMARKS_BY_PACID_SOTRID  (Index) 
--
CREATE UNIQUE INDEX ASU.TMARKS_BY_PACID_SOTRID ON ASU.TMARKS
(PACID, SOTRID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


