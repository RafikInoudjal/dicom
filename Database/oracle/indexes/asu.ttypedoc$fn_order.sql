DROP INDEX ASU.TTYPEDOC$FN_ORDER
/

--
-- TTYPEDOC$FN_ORDER  (Index) 
--
CREATE INDEX ASU.TTYPEDOC$FN_ORDER ON ASU.TTYPEDOC
(FN_ORDER)
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


