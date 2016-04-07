DROP TRIGGER ASU.TR_TCOMPANY_OTDEL
/

--
-- TR_TCOMPANY_OTDEL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   DBMS_STANDARD (Package)
--   TCOMPANY_OTDEL (Table)
--   TCOMPANY_OTDEL_S (Table)
--   SEQ_SYNC_LOG (Sequence)
--   PKG_SYNC (Package)
--   TSYNC_LOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TR_TCOMPANY_OTDEL" 
     AFTER INSERT OR UPDATE OR DELETE ON tcompany_otdel FOR EACH ROW
declare
     vID  number;
     vStr varchar2(2000);
    
   begin
     if PKG_sync.v_is_repl = 0 then
       PKG_sync.v_is_repl := 2;
       if INSERTING then
         
         insert into tcompany_otdel_s (FK_ID,FC_NAME,FK_GUID,fd_edittime)
              values (0,:new.FC_NAME,:new.FK_GUID,systimestamp);
       elsif DELETING then
         insert into tcompany_otdel_s (fk_id, fk_guid, fd_edittime)
              values (1, :old.fk_guid, systimestamp);
       elsif UPDATING then
         
         insert into tcompany_otdel_s (FK_ID,FC_NAME,FK_GUID,fd_edittime)
              values (2,:new.FC_NAME,:new.FK_GUID,systimestamp);
       end if;
       PKG_sync.v_is_repl := 0;
     end if;
   exception when others then
     begin
      PKG_sync.v_is_repl := 0;
      select seq_sync_log.nextval into vID from dual;
      vStr := SQLERRM;
      insert into tsync_log values (vID, systimestamp(3), vStr);
     end;
   end;
/
SHOW ERRORS;


