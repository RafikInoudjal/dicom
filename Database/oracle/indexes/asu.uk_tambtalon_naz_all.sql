DROP INDEX ASU.UK_TAMBTALON_NAZ_ALL
/

--
-- UK_TAMBTALON_NAZ_ALL  (Index) 
--
CREATE UNIQUE INDEX ASU.UK_TAMBTALON_NAZ_ALL ON ASU.TAMBTALON_NAZ
(FK_TALONID, FK_AMBID, FK_NAZID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


