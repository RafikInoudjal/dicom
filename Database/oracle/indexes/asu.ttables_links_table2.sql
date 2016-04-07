DROP INDEX ASU.TTABLES_LINKS_TABLE2
/

--
-- TTABLES_LINKS_TABLE2  (Index) 
--
CREATE INDEX ASU.TTABLES_LINKS_TABLE2 ON ASU.TTABLES_LINKS
(FC_TABLE2_NAME, FK_ID2)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


