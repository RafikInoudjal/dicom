DROP INDEX ASU.TRESMEDCONT$MEDICID
/

--
-- TRESMEDCONT$MEDICID  (Index) 
--
CREATE INDEX ASU.TRESMEDCONT$MEDICID ON ASU.TRESMEDCONT
(FK_MEDICID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          640K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


