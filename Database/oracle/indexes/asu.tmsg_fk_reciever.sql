DROP INDEX ASU.TMSG_FK_RECIEVER
/

--
-- TMSG_FK_RECIEVER  (Index) 
--
CREATE INDEX ASU.TMSG_FK_RECIEVER ON ASU.TMSG
(FK_RECIEVER)
NOLOGGING
TABLESPACE INDX
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


