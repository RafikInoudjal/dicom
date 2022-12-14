DROP INDEX ASU.TAPPVIEW_OPIS_NAME
/

--
-- TAPPVIEW_OPIS_NAME  (Index) 
--
CREATE INDEX ASU.TAPPVIEW_OPIS_NAME ON ASU.TAPPVIEW
(FC_OPIS, FC_NAME)
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


