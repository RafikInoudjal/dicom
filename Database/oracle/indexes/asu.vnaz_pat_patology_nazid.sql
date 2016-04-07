DROP INDEX ASU.VNAZ_PAT_PATOLOGY_NAZID
/

--
-- VNAZ_PAT_PATOLOGY_NAZID  (Index) 
--
CREATE UNIQUE INDEX ASU.VNAZ_PAT_PATOLOGY_NAZID ON ASU.VNAZ_PAT_PATOLOGY
(FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


