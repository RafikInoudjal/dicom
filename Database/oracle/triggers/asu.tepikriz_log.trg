DROP TRIGGER ASU.TEPIKRIZ_LOG
/

--
-- TEPIKRIZ_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   PKG_LOG (Package)
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TEPIKRIZ  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_ID), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_ID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FP_TYPE', 'DELETE', PKG_LOG.GET_VALUE(:old.FP_TYPE), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FD_DATE', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_DATE), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FP_RESLECH', 'DELETE', PKG_LOG.GET_VALUE(:old.FP_RESLECH), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FL_PODPIS', 'DELETE', PKG_LOG.GET_VALUE(:old.FL_PODPIS), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_VRACHID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_CLOBID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_CLOBID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_EPCLOBID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_EPCLOBID), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_REKCLOB', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_REKCLOB), null, :old.fk_id);
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_PACID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_PACID), null, :old.fk_id);

  elsif UPDATING then
    PKG_LOG.Do_log('TEPIKRIZ', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_ID), PKG_LOG.GET_VALUE(:new.FK_ID), :old.fk_id);

    if UPDATING ('FP_TYPE') AND PKG_LOG.GET_VALUE(:old.FP_TYPE) <> PKG_LOG.GET_VALUE(:new.FP_TYPE) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FP_TYPE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_TYPE), PKG_LOG.GET_VALUE(:new.FP_TYPE), :old.fk_id);
    end if;

    if UPDATING ('FD_DATE') AND PKG_LOG.GET_VALUE(:old.FD_DATE) <> PKG_LOG.GET_VALUE(:new.FD_DATE) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FD_DATE', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_DATE), PKG_LOG.GET_VALUE(:new.FD_DATE), :old.fk_id);
    end if;

    if UPDATING ('FP_RESLECH') AND PKG_LOG.GET_VALUE(:old.FP_RESLECH) <> PKG_LOG.GET_VALUE(:new.FP_RESLECH) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FP_RESLECH', 'UPDATE', PKG_LOG.GET_VALUE(:old.FP_RESLECH), PKG_LOG.GET_VALUE(:new.FP_RESLECH), :old.fk_id);
    end if;

    if UPDATING ('FL_PODPIS') AND PKG_LOG.GET_VALUE(:old.FL_PODPIS) <> PKG_LOG.GET_VALUE(:new.FL_PODPIS) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FL_PODPIS', 'UPDATE', PKG_LOG.GET_VALUE(:old.FL_PODPIS), PKG_LOG.GET_VALUE(:new.FL_PODPIS), :old.fk_id);
    end if;

    if UPDATING ('FK_VRACHID') AND PKG_LOG.GET_VALUE(:old.FK_VRACHID) <> PKG_LOG.GET_VALUE(:new.FK_VRACHID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_VRACHID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_VRACHID), PKG_LOG.GET_VALUE(:new.FK_VRACHID), :old.fk_id);
    end if;

    if UPDATING ('FK_CLOBID') AND PKG_LOG.GET_VALUE(:old.FK_CLOBID) <> PKG_LOG.GET_VALUE(:new.FK_CLOBID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_CLOBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_CLOBID), PKG_LOG.GET_VALUE(:new.FK_CLOBID), :old.fk_id);
    end if;

    if UPDATING ('FK_EPCLOBID') AND PKG_LOG.GET_VALUE(:old.FK_EPCLOBID) <> PKG_LOG.GET_VALUE(:new.FK_EPCLOBID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_EPCLOBID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_EPCLOBID), PKG_LOG.GET_VALUE(:new.FK_EPCLOBID), :old.fk_id);
    end if;

    if UPDATING ('FK_REKCLOB') AND PKG_LOG.GET_VALUE(:old.FK_REKCLOB) <> PKG_LOG.GET_VALUE(:new.FK_REKCLOB) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_REKCLOB', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_REKCLOB), PKG_LOG.GET_VALUE(:new.FK_REKCLOB), :old.fk_id);
    end if;

    if UPDATING ('FK_PACID') AND PKG_LOG.GET_VALUE(:old.FK_PACID) <> PKG_LOG.GET_VALUE(:new.FK_PACID) then
      PKG_LOG.Do_log('TEPIKRIZ', 'FK_PACID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PACID), PKG_LOG.GET_VALUE(:new.FK_PACID), :old.fk_id);
    end if;
  end if;
  null;
END VNAZ_LOG;
/
SHOW ERRORS;


