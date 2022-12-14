DROP INDEX ASU.TPROFP_LIST_NAZ_BY_LISTID
/

--
-- TPROFP_LIST_NAZ_BY_LISTID  (Index) 
--
CREATE INDEX ASU.TPROFP_LIST_NAZ_BY_LISTID ON ASU.TPROFP_LIST_NAZ
(FK_LISTID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          6336K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


