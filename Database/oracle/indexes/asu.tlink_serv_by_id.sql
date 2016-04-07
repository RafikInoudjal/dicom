DROP INDEX ASU.TLINK_SERV_BY_ID
/

--
-- TLINK_SERV_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TLINK_SERV_BY_ID ON ASU.TLINK_SERV
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1040K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


