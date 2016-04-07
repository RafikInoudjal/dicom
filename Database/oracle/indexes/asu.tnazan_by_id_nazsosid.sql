DROP INDEX ASU.TNAZAN_BY_ID_NAZSOSID
/

--
-- TNAZAN_BY_ID_NAZSOSID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZAN_BY_ID_NAZSOSID ON ASU.TNAZAN
(FK_ID, FK_NAZSOSID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4736K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

