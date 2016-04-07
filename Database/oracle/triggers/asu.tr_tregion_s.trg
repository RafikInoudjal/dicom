DROP TRIGGER ASU.TR_TREGION_S
/

--
-- TR_TREGION_S  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TREGION (Sequence)
--   SEQ_SYNC_LOG (Sequence)
--   TREGION (Table)
--   TREGION_S (Table)
--   PKG_SYNC (Package)
--   TSYNC_LOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TR_TREGION_S" 
    AFTER INSERT ON tregion_s FOR EACH ROW
declare
    vID  number;
    vStr varchar(2000);
    
  BEGIN
   if PKG_sync.v_is_repl = 0 then
    PKG_sync.v_is_repl := 1;
    if :new.fk_id = 1 then
      delete from tregion t where t.fk_guid = :new.fk_guid;
    elsif :new.fk_id = 2 then
      
      update tregion set FC_NAME = :new.FC_NAME,FL_DEFAULT = :new.FL_DEFAULT,FK_GUID = :new.FK_GUID
      where fk_guid = :new.fk_guid;
    elsif :new.fk_id = 0 then
      
        insert into tregion(FK_ID,FC_NAME,FL_DEFAULT,FK_GUID)
             values (SEQ_TREGION.nextval,:new.FC_NAME,:new.FL_DEFAULT,:new.FK_GUID);
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
END;
/
SHOW ERRORS;


