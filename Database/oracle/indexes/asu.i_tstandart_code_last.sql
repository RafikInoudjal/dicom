DROP INDEX ASU.I_TSTANDART_CODE_LAST
/

--
-- I_TSTANDART_CODE_LAST  (Index) 
--
CREATE INDEX ASU.I_TSTANDART_CODE_LAST ON ASU.TSTANDART
(SUBSTR("FC_CODE",INSTR("FC_CODE",'.',1,5)+1,LENGTH("FC_CODE")))
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


