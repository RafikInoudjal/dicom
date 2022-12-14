DROP INDEX ASU.TNAZIS_FK_NAZSOS_PACID
/

--
-- TNAZIS_FK_NAZSOS_PACID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZIS_FK_NAZSOS_PACID ON ASU.TNAZIS
(FK_NAZSOSID, FK_PACID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1792K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


