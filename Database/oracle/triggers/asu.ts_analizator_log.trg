DROP TRIGGER ASU.TS_ANALIZATOR_LOG
/

--
-- TS_ANALIZATOR_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   PKG_LOG (Package)
--   TS_ANALIZATOR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TS_ANALIZATOR_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TS_ANALIZATOR  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_NAME', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_NAME), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_CLSID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_CLSID), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_MODE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_MODE), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DRIVERID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_DRIVERID), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DEBUG', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_DEBUG), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_EVENTINTERVAL', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_EVENTINTERVAL), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_SPLITCOUNT', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_SPLITCOUNT), :new.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_PORTNUMBER', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_PORTNUMBER), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_ID', 'DELETE', null, PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_NAME', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_NAME), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_CLSID', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_CLSID), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_MODE', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_MODE), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DRIVERID', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_DRIVERID), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DEBUG', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_DEBUG), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_EVENTINTERVAL', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_EVENTINTERVAL), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_SPLITCOUNT', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FC_SPLITCOUNT), :old.fk_id);
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_PORTNUMBER', 'DELETE', null, PKG_LOG.GET_VALUE(:new.FK_PORTNUMBER), :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FC_NAME') AND PKG_LOG.GET_VALUE(:old.FC_NAME) <> PKG_LOG.GET_VALUE(:new.FC_NAME) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_NAME', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NAME), PKG_LOG.GET_VALUE(:new.FC_NAME), :old.fk_id);
    end if;
    if UPDATING ('FC_CLSID') AND PKG_LOG.GET_VALUE(:old.FC_CLSID) <> PKG_LOG.GET_VALUE(:new.FC_CLSID) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_CLSID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_CLSID), PKG_LOG.GET_VALUE(:new.FC_CLSID), :old.fk_id);
    end if;
    if UPDATING ('FC_DRIVERID') AND PKG_LOG.GET_VALUE(:old.FC_DRIVERID) <> PKG_LOG.GET_VALUE(:new.FC_DRIVERID) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DRIVERID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_DRIVERID), PKG_LOG.GET_VALUE(:new.FC_DRIVERID), :old.fk_id);
    end if;
    if UPDATING ('FC_DEBUG') AND PKG_LOG.GET_VALUE(:old.FC_DEBUG) <> PKG_LOG.GET_VALUE(:new.FC_DEBUG) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_DEBUG', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_DEBUG), PKG_LOG.GET_VALUE(:new.FC_DEBUG), :old.fk_id);
    end if;
    if UPDATING ('FC_EVENTINTERVAL') AND PKG_LOG.GET_VALUE(:old.FC_EVENTINTERVAL) <> PKG_LOG.GET_VALUE(:new.FC_EVENTINTERVAL) then
      PKG_LOG.Do_log('TKARTA', 'FC_EVENTINTERVAL', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_EVENTINTERVAL), PKG_LOG.GET_VALUE(:new.FC_EVENTINTERVAL), :old.fk_id);
    end if;
    if UPDATING ('FC_SPLITCOUNT') AND PKG_LOG.GET_VALUE(:old.FC_SPLITCOUNT) <> PKG_LOG.GET_VALUE(:new.FC_SPLITCOUNT) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FC_SPLITCOUNT', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_SPLITCOUNT), PKG_LOG.GET_VALUE(:new.FC_SPLITCOUNT), :old.fk_id);
    end if;
    if UPDATING ('FK_PORTNUMBER') AND PKG_LOG.GET_VALUE(:old.FK_PORTNUMBER) <> PKG_LOG.GET_VALUE(:new.FK_PORTNUMBER) then
      PKG_LOG.Do_log('TS_ANALIZATOR', 'FK_PORTNUMBER', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PORTNUMBER), PKG_LOG.GET_VALUE(:new.FK_PORTNUMBER), :old.fk_id);
    end if;
  end if;
END TS_ANALIZATOR_LOG;
/
SHOW ERRORS;


