DROP INDEX ASU.DBCONNECTOR_OID
/

--
-- DBCONNECTOR_OID  (Index) 
--
CREATE UNIQUE INDEX ASU.DBCONNECTOR_OID ON ASU."DbConnector"
("oID")
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


