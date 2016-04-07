DROP TRIGGER ASU.TSTOMPOS_LOG
/

--
-- TSTOMPOS_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   PKG_LOG (Package)
--   TSTOMPOS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTOMPOS_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TSTOMPOS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TSTOMPOS', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TSTOMPOS', 'STOMPOSID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.STOMPOSID), :new.fk_id);
    PKG_LOG.Do_log('TSTOMPOS', 'FC_NAME', 'INSERT', PKG_LOG.GET_VALUE(:old.FC_NAME), PKG_LOG.GET_VALUE(:new.FC_NAME), :new.fk_id);
    PKG_LOG.Do_log('TSTOMPOS', 'FK_PICSID', 'INSERT', PKG_LOG.GET_VALUE(:old.FK_PICSID), PKG_LOG.GET_VALUE(:new.FK_PICSID), :new.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TSTOMPOS', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('STOMPOSID') AND PKG_LOG.GET_VALUE(:old.STOMPOSID) <> PKG_LOG.GET_VALUE(:new.STOMPOSID) then
      PKG_LOG.Do_log('TSTOMPOS', 'STOMPOSID', 'UPDATE', PKG_LOG.GET_VALUE(:old.STOMPOSID), PKG_LOG.GET_VALUE(:new.STOMPOSID), :old.fk_id);
    end if;
    if UPDATING ('FC_NAME') AND PKG_LOG.GET_VALUE(:old.FC_NAME) <> PKG_LOG.GET_VALUE(:new.FC_NAME) then
      PKG_LOG.Do_log('TSTOMPOS', 'FC_NAME', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NAME), PKG_LOG.GET_VALUE(:new.FC_NAME), :old.fk_id);
    end if;
    if UPDATING ('FK_PICSID') AND PKG_LOG.GET_VALUE(:old.FK_PICSID) <> PKG_LOG.GET_VALUE(:new.FK_PICSID) then
      PKG_LOG.Do_log('TSTOMPOS', 'FK_PICSID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PICSID), PKG_LOG.GET_VALUE(:new.FK_PICSID), :old.fk_id);
    end if;
  end if;
END;
/
SHOW ERRORS;


