DROP INDEX ASU.TNAZLECH_PACID
/

--
-- TNAZLECH_PACID  (Index) 
--
CREATE INDEX ASU.TNAZLECH_PACID ON ASU.TNAZLECH
(FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2432K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


