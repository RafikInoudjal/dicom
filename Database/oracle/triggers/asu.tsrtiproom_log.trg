DROP TRIGGER ASU.TSRTIPROOM_LOG
/

--
-- TSRTIPROOM_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   TSRTIPROOM (Table)
--   PKG_LOG (Package)
--
CREATE OR REPLACE TRIGGER ASU."TSRTIPROOM_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TSRTIPROOM  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TSRTIPROOM', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TSRTIPROOM', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FK_PALATAID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_PALATAID), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FD_DATA1', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_DATA1), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FD_DATA2', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_DATA2), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FN_MESTA', 'DELETE', PKG_LOG.GET_VALUE(:old.FN_MESTA), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FK_VIDID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_VIDID), null, :old.fk_id);
    PKG_LOG.Do_log('TSRTIPROOM', 'FL_REMONT', 'DELETE', PKG_LOG.GET_VALUE(:old.FL_REMONT), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TSRTIPROOM', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FK_PALATAID') AND PKG_LOG.GET_VALUE(:old.FK_PALATAID) <> PKG_LOG.GET_VALUE(:new.FK_PALATAID) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FK_PALATAID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PALATAID), PKG_LOG.GET_VALUE(:new.FK_PALATAID), :old.fk_id);
    end if;
    if UPDATING ('FD_DATA1') AND PKG_LOG.GET_VALUE(:old.FD_DATA1) <> PKG_LOG.GET_VALUE(:new.FD_DATA1) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FD_DATA1', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATA1), PKG_LOG.GET_VALUE(:new.FD_DATA1), :old.fk_id);
    end if;
    if UPDATING ('FD_DATA2') AND PKG_LOG.GET_VALUE(:old.FD_DATA2) <> PKG_LOG.GET_VALUE(:new.FD_DATA2) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FD_DATA2', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATA2), PKG_LOG.GET_VALUE(:new.FD_DATA2), :old.fk_id);
    end if;
    if UPDATING ('FN_MESTA') AND PKG_LOG.GET_VALUE(:old.FN_MESTA) <> PKG_LOG.GET_VALUE(:new.FN_MESTA) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FN_MESTA', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_MESTA), PKG_LOG.GET_VALUE(:new.FN_MESTA), :old.fk_id);
    end if;
    if UPDATING ('FK_VIDID') AND PKG_LOG.GET_VALUE(:old.FK_VIDID) <> PKG_LOG.GET_VALUE(:new.FK_VIDID) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FK_VIDID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_VIDID), PKG_LOG.GET_VALUE(:new.FK_VIDID), :old.fk_id);
    end if;
    if UPDATING ('FL_REMONT') AND PKG_LOG.GET_VALUE(:old.FL_REMONT) <> PKG_LOG.GET_VALUE(:new.FL_REMONT) then
      PKG_LOG.Do_log('TSRTIPROOM', 'FL_REMONT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FL_REMONT), PKG_LOG.GET_VALUE(:new.FL_REMONT), :old.fk_id);
    end if;
  end if;
  null;
END TSRTIPROOM_LOG;
/
SHOW ERRORS;


