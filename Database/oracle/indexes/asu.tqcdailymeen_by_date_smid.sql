DROP INDEX ASU.TQCDAILYMEEN_BY_DATE_SMID
/

--
-- TQCDAILYMEEN_BY_DATE_SMID  (Index) 
--
CREATE UNIQUE INDEX ASU.TQCDAILYMEEN_BY_DATE_SMID ON ASU.TQCDAILYMEEN
(FD_DATE, FK_SMID)
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


