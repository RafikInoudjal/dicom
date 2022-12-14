DROP INDEX ASU.TNAZAN_ALL
/

--
-- TNAZAN_ALL  (Index) 
--
CREATE INDEX ASU.TNAZAN_ALL ON ASU.TNAZAN
(FK_ID, FD_RUN, FK_ROOMID, FK_ISPOLID, FK_NAZSOSID, 
FK_PACID, FL_IN_RASPIS)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          10368K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


