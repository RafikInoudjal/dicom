DROP INDEX ASU.TQCSHUHART_BY_DATE_SMID
/

--
-- TQCSHUHART_BY_DATE_SMID  (Index) 
--
CREATE UNIQUE INDEX ASU.TQCSHUHART_BY_DATE_SMID ON ASU.TQCSHUHART
(FD_DATE, FK_SMID)
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


