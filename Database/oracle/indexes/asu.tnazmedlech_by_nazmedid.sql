DROP INDEX ASU.TNAZMEDLECH_BY_NAZMEDID
/

--
-- TNAZMEDLECH_BY_NAZMEDID  (Index) 
--
CREATE INDEX ASU.TNAZMEDLECH_BY_NAZMEDID ON ASU.TNAZMEDLECH
(FK_NAZMEDID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


