DROP INDEX ASU.TTHERPOINTS_BY_SHOW_OTD
/

--
-- TTHERPOINTS_BY_SHOW_OTD  (Index) 
--
CREATE INDEX ASU.TTHERPOINTS_BY_SHOW_OTD ON ASU.TTHERPOINTS
(FK_OTDEL, FL_SHOW)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


