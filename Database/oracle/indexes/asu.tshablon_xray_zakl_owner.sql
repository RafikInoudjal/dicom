DROP INDEX ASU.TSHABLON_XRAY_ZAKL_OWNER
/

--
-- TSHABLON_XRAY_ZAKL_OWNER  (Index) 
--
CREATE INDEX ASU.TSHABLON_XRAY_ZAKL_OWNER ON ASU.TSHABLON_XRAY_ZAKL
(FK_OWNER)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


