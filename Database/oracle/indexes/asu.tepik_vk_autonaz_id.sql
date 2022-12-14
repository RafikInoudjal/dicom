DROP INDEX ASU.TEPIK_VK_AUTONAZ_ID
/

--
-- TEPIK_VK_AUTONAZ_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TEPIK_VK_AUTONAZ_ID ON ASU.TEPIK_VK_AUTONAZ
(FK_EPIKID)
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


