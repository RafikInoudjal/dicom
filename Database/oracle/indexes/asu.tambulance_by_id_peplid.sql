DROP INDEX ASU.TAMBULANCE_BY_ID_PEPLID
/

--
-- TAMBULANCE_BY_ID_PEPLID  (Index) 
--
CREATE UNIQUE INDEX ASU.TAMBULANCE_BY_ID_PEPLID ON ASU.TAMBULANCE
(FK_ID, FK_PEPLID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          7040K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


