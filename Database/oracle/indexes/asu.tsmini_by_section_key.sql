DROP INDEX ASU.TSMINI_BY_SECTION_KEY
/

--
-- TSMINI_BY_SECTION_KEY  (Index) 
--
CREATE UNIQUE INDEX ASU.TSMINI_BY_SECTION_KEY ON ASU.TSMINI
(FC_SECTION, FC_KEY)
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


