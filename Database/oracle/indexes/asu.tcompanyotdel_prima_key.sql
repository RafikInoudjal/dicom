DROP INDEX ASU.TCOMPANYOTDEL_PRIMA_KEY
/

--
-- TCOMPANYOTDEL_PRIMA_KEY  (Index) 
--
CREATE UNIQUE INDEX ASU.TCOMPANYOTDEL_PRIMA_KEY ON ASU.TCOMPANY_OTDEL
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


