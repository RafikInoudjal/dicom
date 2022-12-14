DROP INDEX ASU.TXRAY_TEMPLATE_RECOM_SMIDID
/

--
-- TXRAY_TEMPLATE_RECOM_SMIDID  (Index) 
--
CREATE INDEX ASU.TXRAY_TEMPLATE_RECOM_SMIDID ON ASU.TXRAY_TEMPLATE_RECOM
(FK_SMID)
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


