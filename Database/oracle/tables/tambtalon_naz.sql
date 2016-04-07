DROP TABLE ASU.TAMBTALON_NAZ CASCADE CONSTRAINTS
/

--
-- TAMBTALON_NAZ  (Table) 
--
CREATE TABLE ASU.TAMBTALON_NAZ
(
  FK_TALONID  NUMBER(15)                        NOT NULL,
  FK_AMBID    NUMBER(15),
  FK_NAZID    NUMBER(15)                        NOT NULL
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON COLUMN ASU.TAMBTALON_NAZ.FK_TALONID IS '��� ������'
/

COMMENT ON COLUMN ASU.TAMBTALON_NAZ.FK_AMBID IS '��� ����������� �����'
/

COMMENT ON COLUMN ASU.TAMBTALON_NAZ.FK_NAZID IS '��� ���������� ����������'
/


--
-- TAMBTALON_NAZ_BY_AMBID  (Index) 
--
--  Dependencies: 
--   TAMBTALON_NAZ (Table)
--
CREATE INDEX ASU.TAMBTALON_NAZ_BY_AMBID ON ASU.TAMBTALON_NAZ
(FK_AMBID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TAMBTALON_NAZ_BY_TALONID  (Index) 
--
--  Dependencies: 
--   TAMBTALON_NAZ (Table)
--
CREATE INDEX ASU.TAMBTALON_NAZ_BY_TALONID ON ASU.TAMBTALON_NAZ
(FK_TALONID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          320K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TAMBTALON_NAZ_NAZID  (Index) 
--
--  Dependencies: 
--   TAMBTALON_NAZ (Table)
--
CREATE INDEX ASU.TAMBTALON_NAZ_NAZID ON ASU.TAMBTALON_NAZ
(FK_NAZID)
NOLOGGING
TABLESPACE USR
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


--
-- UK_TAMBTALON_NAZ_ALL  (Index) 
--
--  Dependencies: 
--   TAMBTALON_NAZ (Table)
--
CREATE UNIQUE INDEX ASU.UK_TAMBTALON_NAZ_ALL ON ASU.TAMBTALON_NAZ
(FK_TALONID, FK_AMBID, FK_NAZID)
NOLOGGING
TABLESPACE USR
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


--
-- TAMBTALON_NAZ_LOG  (Trigger) 
--
--  Dependencies: 
--   TAMBTALON_NAZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBTALON_NAZ_LOG" 
 BEFORE
  INSERT OR DELETE OR UPDATE
 ON asu.tambtalon_naz
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_TALONID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_TALONID),:new.FK_NAZID);
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_AMBID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_AMBID),:new.FK_NAZID);
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_NAZID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_NAZID),:new.FK_NAZID);
  elsif DELETING then
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_TALONID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_TALONID), null,:old.FK_NAZID);
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_AMBID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_AMBID), null,:old.FK_NAZID);
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_NAZID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_NAZID), null,:old.FK_NAZID);
  elsif UPDATING then
    PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_NAZID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_NAZID), PKG_LOG.GET_VALUE(:new.FK_NAZID),:old.FK_NAZID);

    if UPDATING ('FK_TALONID') AND PKG_LOG.GET_VALUE(:old.FK_TALONID) <> PKG_LOG.GET_VALUE(:new.FK_TALONID) then
      PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_TALONID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_TALONID), PKG_LOG.GET_VALUE(:new.FK_TALONID),:old.FK_NAZID);
    end if;

    if UPDATING ('FK_AMBID') AND PKG_LOG.GET_VALUE(:old.FK_AMBID) <> PKG_LOG.GET_VALUE(:new.FK_AMBID) then
      PKG_LOG.Do_log('TAMBTALON_NAZ', 'FK_AMBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_AMBID), PKG_LOG.GET_VALUE(:new.FK_AMBID),:old.FK_NAZID);
    end if;
  end if;
  null;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TAMBTALON_NAZ 
-- 
ALTER TABLE ASU.TAMBTALON_NAZ ADD (
  CONSTRAINT UK_TAMBTALON_NAZ_ALL
 UNIQUE (FK_TALONID, FK_AMBID, FK_NAZID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

GRANT REFERENCES, SELECT ON ASU.TAMBTALON_NAZ TO EXCHANGE
/

GRANT REFERENCES, SELECT ON ASU.TAMBTALON_NAZ TO EXCH43
/

