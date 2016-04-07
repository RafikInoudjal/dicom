DROP INDEX ASU.K_TUSLNOCOMPARE_STOR_ID
/

--
-- K_TUSLNOCOMPARE_STOR_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.K_TUSLNOCOMPARE_STOR_ID ON ASU.TUSLNOCOMPARE_STOR
(FK_ID)
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


