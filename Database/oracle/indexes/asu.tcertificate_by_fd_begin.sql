DROP INDEX ASU.TCERTIFICATE_BY_FD_BEGIN
/

--
-- TCERTIFICATE_BY_FD_BEGIN  (Index) 
--
CREATE INDEX ASU.TCERTIFICATE_BY_FD_BEGIN ON ASU.TCERTIFICATE
(FD_BEGIN)
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


