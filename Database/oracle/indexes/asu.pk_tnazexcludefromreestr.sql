DROP INDEX ASU.PK_TNAZEXCLUDEFROMREESTR
/

--
-- PK_TNAZEXCLUDEFROMREESTR  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TNAZEXCLUDEFROMREESTR ON ASU.TNAZEXCLUDEFROMREESTR
(FK_NAZID)
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


