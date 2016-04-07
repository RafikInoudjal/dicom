DROP INDEX ASU.TAPRIHCONT$APRIHID
/

--
-- TAPRIHCONT$APRIHID  (Index) 
--
CREATE INDEX ASU.TAPRIHCONT$APRIHID ON ASU.TAPRIHCONT
(FK_APRIHID)
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

