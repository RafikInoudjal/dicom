DROP INDEX ASU.TNAZIS_FK_NAZSOSID_PACID
/

--
-- TNAZIS_FK_NAZSOSID_PACID  (Index) 
--
CREATE INDEX ASU.TNAZIS_FK_NAZSOSID_PACID ON ASU.TNAZIS
(FK_NAZSOSID, FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1408K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


