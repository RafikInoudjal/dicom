DROP INDEX ASU.TVAC_PEOPLE$FK_VACCINPREP
/

--
-- TVAC_PEOPLE$FK_VACCINPREP  (Index) 
--
CREATE INDEX ASU.TVAC_PEOPLE$FK_VACCINPREP ON ASU.TVAC_PEOPLE
(FK_VACCIN_PREP)
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


