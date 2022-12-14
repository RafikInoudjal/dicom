DROP TRIGGER ASU.TNAZAUTODONE$BIUD
/

--
-- TNAZAUTODONE$BIUD  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   TNAZAUTODONE (Table)
--   PKG_LOG (Package)
--
CREATE OR REPLACE TRIGGER ASU."TNAZAUTODONE$BIUD" 
 BEFORE 
 INSERT OR DELETE OR UPDATE
 ON ASU.TNAZAUTODONE  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TNAZAUTODONE', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_ID), :new.fk_id);
    PKG_LOG.Do_log('TNAZAUTODONE', 'FK_SMID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_SMID), :new.fk_id);
    PKG_LOG.Do_log('TNAZAUTODONE', 'FN_TYPE', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FN_TYPE), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TNAZAUTODONE', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_ID), null, :old.fk_id);
    PKG_LOG.Do_log('TNAZAUTODONE', 'FK_SMID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_SMID), null, :old.fk_id);
    PKG_LOG.Do_log('TNAZAUTODONE', 'FN_TYPE', 'DELETE', PKG_LOG.GET_VALUE(:old.FN_TYPE), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TNAZAUTODONE', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_ID), PKG_LOG.GET_VALUE(:new.FK_ID), :old.fk_id);
    if UPDATING ('FK_SMID') AND PKG_LOG.GET_VALUE(:old.FK_SMID) <> PKG_LOG.GET_VALUE(:new.FK_SMID) then
      PKG_LOG.Do_log('TNAZAUTODONE', 'FK_SMID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_SMID), PKG_LOG.GET_VALUE(:new.FK_SMID), :old.fk_id);
    end if;
    if UPDATING ('FN_TYPE') AND PKG_LOG.GET_VALUE(:old.FN_TYPE) <> PKG_LOG.GET_VALUE(:new.FN_TYPE) then
      PKG_LOG.Do_log('TNAZAUTODONE', 'FN_TYPE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FN_TYPE), PKG_LOG.GET_VALUE(:new.FN_TYPE), :old.fk_id);
    end if;
  end if;
  null;
END TSMID_LOG;
/
SHOW ERRORS;


