DROP INDEX ASU.TNAZMEDLECH_BY_ID
/

--
-- TNAZMEDLECH_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZMEDLECH_BY_ID ON ASU.TNAZMEDLECH
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


