DROP INDEX ASU.I_TEXSLUCH_ERR_ARCH_USLID
/

--
-- I_TEXSLUCH_ERR_ARCH_USLID  (Index) 
--
CREATE INDEX ASU.I_TEXSLUCH_ERR_ARCH_USLID ON ASU.TEXSLUCH_ERR_ARCHIVE
(FK_USLID)
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


