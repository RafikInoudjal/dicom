DROP TRIGGER ASU.TINSURDOCS_LOG
/

--
-- TINSURDOCS_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   PKG_LOG (Package)
--   TINSURDOCS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TINSURDOCS_LOG" 
 AFTER 
 INSERT OR DELETE OR UPDATE
 ON ASU.TINSURDOCS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TINSURDOCS', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_PEPLID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_PEPLID), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_GROUPID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_GROUPID), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_DOGOVORID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_DOGOVORID), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_TYPEDOCID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_TYPEDOCID), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FC_SER', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_SER), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FC_NUM', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FC_NUM), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_BEGIN', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_BEGIN), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_END', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_END), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_COMPANYID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FK_COMPANYID), :new.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_PROLONG', 'INSERT', null, PKG_LOG.GET_VALUE(:new.FD_PROLONG), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TINSURDOCS', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_PEPLID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_PEPLID), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FC_SER', 'DELETE', PKG_LOG.GET_VALUE(:old.FC_SER), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FC_NUM', 'DELETE', PKG_LOG.GET_VALUE(:old.FC_NUM), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_BEGIN', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_BEGIN), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_END', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_END), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_COMPANYID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_COMPANYID), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_GROUPID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_GROUPID), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_DOGOVORID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_DOGOVORID), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FK_TYPEDOCID', 'DELETE', PKG_LOG.GET_VALUE(:old.FK_TYPEDOCID), null, :old.fk_id);
    PKG_LOG.Do_log('TINSURDOCS', 'FD_PROLONG', 'DELETE', PKG_LOG.GET_VALUE(:old.FD_PROLONG), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TINSURDOCS', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FK_PEPLID') AND PKG_LOG.GET_VALUE(:old.FK_PEPLID) <> PKG_LOG.GET_VALUE(NVL(:new.FK_PEPLID,0)) then
      PKG_LOG.Do_log('TINSURDOCS', 'FK_PEPLID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_PEPLID), PKG_LOG.GET_VALUE(:new.FK_PEPLID), :old.fk_id);
    end if;
    if UPDATING ('FC_SER') AND PKG_LOG.GET_VALUE(:old.FC_SER) <> PKG_LOG.GET_VALUE(:new.FC_SER) then
      PKG_LOG.Do_log('TINSURDOCS', 'FC_SER', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_SER), PKG_LOG.GET_VALUE(:new.FC_SER), :old.fk_id);
    end if;
    if UPDATING ('FC_NUM') AND PKG_LOG.GET_VALUE(:old.FC_NUM) <> PKG_LOG.GET_VALUE(:new.FC_NUM) then
      PKG_LOG.Do_log('TINSURDOCS', 'FC_NUM', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NUM), PKG_LOG.GET_VALUE(:new.FC_NUM), :old.fk_id);
    end if;
    if UPDATING ('FD_BEGIN') AND PKG_LOG.GET_VALUE(:old.FD_BEGIN) <> PKG_LOG.GET_VALUE(:new.FD_BEGIN) then
      PKG_LOG.Do_log('TINSURDOCS', 'FD_BEGIN', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_BEGIN), PKG_LOG.GET_VALUE(:new.FD_BEGIN), :old.fk_id);
    end if;
    if UPDATING ('FD_END') AND PKG_LOG.GET_VALUE(:old.FD_END) <> PKG_LOG.GET_VALUE(:new.FD_END) then
      PKG_LOG.Do_log('TINSURDOCS', 'FD_END', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_END), PKG_LOG.GET_VALUE(:new.FD_END), :old.fk_id);
    end if;
    if UPDATING ('FD_PROLONG') AND PKG_LOG.GET_VALUE(:old.FD_PROLONG) <> PKG_LOG.GET_VALUE(:new.FD_PROLONG) then
      PKG_LOG.Do_log('TINSURDOCS', 'FD_PROLONG', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_PROLONG), PKG_LOG.GET_VALUE(:new.FD_PROLONG), :old.fk_id);
    end if;
    if UPDATING ('FK_COMPANYID') AND PKG_LOG.GET_VALUE(:old.FK_COMPANYID) <> PKG_LOG.GET_VALUE(NVL(:new.FK_COMPANYID,0)) then
      PKG_LOG.Do_log('TINSURDOCS', 'FK_COMPANYID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_COMPANYID), PKG_LOG.GET_VALUE(:new.FK_COMPANYID), :old.fk_id);
    end if;


    if UPDATING ('FK_GROUPID') AND PKG_LOG.GET_VALUE(:old.FK_GROUPID) <> PKG_LOG.GET_VALUE(NVL(:new.FK_GROUPID,0)) then
      PKG_LOG.Do_log('TINSURDOCS', 'FK_GROUPID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_GROUPID), PKG_LOG.GET_VALUE(:new.FK_GROUPID), :old.fk_id);
    end if;
    if UPDATING ('FK_DOGOVORID') AND PKG_LOG.GET_VALUE(:old.FK_DOGOVORID) <> PKG_LOG.GET_VALUE(NVL(:new.FK_DOGOVORID,0)) then
      PKG_LOG.Do_log('TINSURDOCS', 'FK_DOGOVORID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_DOGOVORID), PKG_LOG.GET_VALUE(:new.FK_DOGOVORID), :old.fk_id);
    end if;
    if UPDATING ('FK_TYPEDOCID') AND PKG_LOG.GET_VALUE(:old.FK_TYPEDOCID) <> PKG_LOG.GET_VALUE(NVL(:new.FK_TYPEDOCID,0)) then
      PKG_LOG.Do_log('TINSURDOCS', 'FK_TYPEDOCID', 'UPDATE', PKG_LOG.GET_VALUE(:old.FK_TYPEDOCID), PKG_LOG.GET_VALUE(:new.FK_TYPEDOCID), :old.fk_id);
    end if;
    if UPDATING ('FD_PROLONG') AND PKG_LOG.GET_VALUE(:old.FD_PROLONG) <> PKG_LOG.GET_VALUE(:new.FD_PROLONG) then
      PKG_LOG.Do_log('TINSURDOCS', 'FD_PROLONG', 'UPDATE', PKG_LOG.GET_VALUE(:old.FD_PROLONG), PKG_LOG.GET_VALUE(:new.FD_PROLONG), :old.fk_id);
    end if;
  end if;
  null;
END;
/
SHOW ERRORS;


