DROP INDEX ASU.TDISPCARD_POS_BY_DISPCARDID
/

--
-- TDISPCARD_POS_BY_DISPCARDID  (Index) 
--
CREATE INDEX ASU.TDISPCARD_POS_BY_DISPCARDID ON ASU.TDISPCARD_POS
(FK_DISPCARDID)
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


