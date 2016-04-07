DROP INDEX ASU.TCOMPANY_SYN
/

--
-- TCOMPANY_SYN  (Index) 
--
CREATE UNIQUE INDEX ASU.TCOMPANY_SYN ON ASU.TCOMPANY
(FC_SYNONIM)
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


