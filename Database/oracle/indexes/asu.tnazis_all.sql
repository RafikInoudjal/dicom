DROP INDEX ASU.TNAZIS_ALL
/

--
-- TNAZIS_ALL  (Index) 
--
CREATE INDEX ASU.TNAZIS_ALL ON ASU.TNAZIS
(FK_ID, FD_RUN, FK_ROOMID, FK_ISPOLID, FK_NAZSOSID, 
FK_PACID, FL_IN_RASPIS)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2304K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


