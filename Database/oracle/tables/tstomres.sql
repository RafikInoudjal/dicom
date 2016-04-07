DROP TABLE ASU.TSTOMRES CASCADE CONSTRAINTS
/

--
-- TSTOMRES  (Table) 
--
CREATE TABLE ASU.TSTOMRES
(
  FK_ID       NUMBER(15)                        NOT NULL,
  FK_PAC      NUMBER(15),
  FK_STOMNAZ  NUMBER(15),
  FN_TEETH    NUMBER(2),
  FK_P1       NUMBER(15),
  FK_P2       NUMBER(15),
  FK_P3       NUMBER(15),
  FK_P4       NUMBER(15),
  FK_P5       NUMBER(15),
  FK_P6       NUMBER(15),
  FK_P7       NUMBER(15),
  FL_ENABLE   NUMBER(1)                         DEFAULT 1
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          3240K
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

COMMENT ON TABLE ASU.TSTOMRES IS '��������� ����� ����� by TimurLan '
/

COMMENT ON COLUMN ASU.TSTOMRES.FK_ID IS 'SEQUENCE=[SEQ_TSTOMRES]'
/

COMMENT ON COLUMN ASU.TSTOMRES.FK_PAC IS '����� ��������'
/

COMMENT ON COLUMN ASU.TSTOMRES.FK_STOMNAZ IS '����������'
/

COMMENT ON COLUMN ASU.TSTOMRES.FN_TEETH IS '���'
/

COMMENT ON COLUMN ASU.TSTOMRES.FK_P1 IS '����� ����'
/

COMMENT ON COLUMN ASU.TSTOMRES.FK_P7 IS '���� ���'
/

COMMENT ON COLUMN ASU.TSTOMRES.FL_ENABLE IS '1-��� ����'
/


--
-- TSTOMRES_LOG  (Trigger) 
--
--  Dependencies: 
--   TSTOMRES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTOMRES_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TSTOMRES  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TSTOMRES', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TSTOMRES', 'FK_PAC', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_PAC), :new.fk_id);
    PKG_LOG.Do_log('TSTOMRES', 'FK_STOMNAZ', 'INSERT', PKG_LOG.GET_VALUE(:old.FK_STOMNAZ), PKG_LOG.GET_VALUE(:new.FK_STOMNAZ), :new.fk_id);
    PKG_LOG.Do_log('TSTOMRES', 'FN_TEETH', 'INSERT', PKG_LOG.GET_VALUE(:old.FN_TEETH), PKG_LOG.GET_VALUE(:new.FN_TEETH), :new.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TSTOMRES', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FK_PAC') AND PKG_LOG.GET_VALUE(:old.FK_PAC) <> PKG_LOG.GET_VALUE(:new.FK_PAC) then
      PKG_LOG.Do_log('TSTOMRES', 'FK_PAC', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PAC), PKG_LOG.GET_VALUE(:new.FK_PAC), :old.fk_id);
    end if;
    if UPDATING ('FK_STOMNAZ') AND PKG_LOG.GET_VALUE(:old.FK_STOMNAZ) <> PKG_LOG.GET_VALUE(:new.FK_STOMNAZ) then
      PKG_LOG.Do_log('TSTOMRES', 'FK_STOMNAZ', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_STOMNAZ), PKG_LOG.GET_VALUE(:new.FK_STOMNAZ), :old.fk_id);
    end if;
    if UPDATING ('FN_TEETH') AND PKG_LOG.GET_VALUE(:old.FN_TEETH) <> PKG_LOG.GET_VALUE(:new.FN_TEETH) then
      PKG_LOG.Do_log('TSTOMRES', 'FN_TEETH', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_TEETH), PKG_LOG.GET_VALUE(:new.FN_TEETH), :old.fk_id);
    end if;
  end if;
END;
/
SHOW ERRORS;


--
-- TSOMRES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSTOMRES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSOMRES_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TSTOMRES   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSTOMRES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


