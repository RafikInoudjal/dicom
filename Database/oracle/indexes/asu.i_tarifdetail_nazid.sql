DROP INDEX ASU.I_TARIFDETAIL_NAZID
/

--
-- I_TARIFDETAIL_NAZID  (Index) 
--
CREATE INDEX ASU.I_TARIFDETAIL_NAZID ON ASU.TARIFDETAIL
(FK_NAZID)
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


