DROP INDEX ASU.TTOPERSMID_PRIMA_KEY
/

--
-- TTOPERSMID_PRIMA_KEY  (Index) 
--
CREATE UNIQUE INDEX ASU.TTOPERSMID_PRIMA_KEY ON ASU.TOPER_SMID
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


