DROP INDEX ASU.TNAZWIZZARD_MEDNAZ_PK
/

--
-- TNAZWIZZARD_MEDNAZ_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZWIZZARD_MEDNAZ_PK ON ASU.TNAZWIZZARD_MEDNAZ
(FK_ID)
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


