DROP TRIGGER ASU.TTECHBOLEZNI_LOG
/

--
-- TTECHBOLEZNI_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   PKG_LOG (Package)
--   TTECHBOLEZNI (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTECHBOLEZNI_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TTECHBOLEZNI  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FD_DATE', 'INSERT', PKG_LOG.GET_VALUE(:old.FD_DATE), PKG_LOG.GET_VALUE(:new.FD_DATE), :new.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_VRACHID', 'INSERT', PKG_LOG.GET_VALUE(:old.FK_VRACHID), PKG_LOG.GET_VALUE(:new.FK_VRACHID), :new.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_PACID', 'INSERT', PKG_LOG.GET_VALUE(:old.FK_PACID), PKG_LOG.GET_VALUE(:new.FK_PACID), :new.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FP_STOM', 'INSERT', PKG_LOG.GET_VALUE(:old.FP_STOM), PKG_LOG.GET_VALUE(:new.FP_STOM), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FD_DATE', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_DATE), null, :old.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_VRACHID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), null, :old.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_PACID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_PACID), null, :old.fk_id);
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FP_STOM', 'DELETE', PKG_LOG.GET_VALUE(:old.FP_STOM), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FD_DATE') AND PKG_LOG.GET_VALUE(:old.FD_DATE) <> PKG_LOG.GET_VALUE(:new.FD_DATE) then
      PKG_LOG.Do_log('TTECHBOLEZNI', 'FD_DATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE), PKG_LOG.GET_VALUE(:new.FD_DATE), :old.fk_id);
    end if;
    if UPDATING ('FK_VRACHID') AND PKG_LOG.GET_VALUE(:old.FK_VRACHID) <> PKG_LOG.GET_VALUE(:new.FK_VRACHID) then
      PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_VRACHID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), PKG_LOG.GET_VALUE(:new.FK_VRACHID), :old.fk_id);
    end if;
    if UPDATING ('FK_PACID') AND PKG_LOG.GET_VALUE(:old.FK_PACID) <> PKG_LOG.GET_VALUE(:new.FK_PACID) then
      PKG_LOG.Do_log('TTECHBOLEZNI', 'FK_PACID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PACID), PKG_LOG.GET_VALUE(:new.FK_PACID), :old.fk_id);
    end if;
    if UPDATING ('FP_STOM') AND PKG_LOG.GET_VALUE(:old.FP_STOM) <> PKG_LOG.GET_VALUE(:new.FP_STOM) then
      PKG_LOG.Do_log('TTECHBOLEZNI', 'FP_STOM', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_STOM), PKG_LOG.GET_VALUE(:new.FP_STOM), :old.fk_id);
    end if;
  end if;
END;
/
SHOW ERRORS;


