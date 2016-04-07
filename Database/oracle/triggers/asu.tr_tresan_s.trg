DROP TRIGGER ASU.TR_TRESAN_S
/

--
-- TR_TRESAN_S  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKARTA (Sequence)
--   TNAZAN (Table)
--   TRESAN (Table)
--   TRESAN_S (Table)
--   TPATNAME (Table)
--   TAMBULANCE (Table)
--   SEQ_SYNC_LOG (Sequence)
--   TSMID (Table)
--   PKG_SYNC (Package)
--   TSYNC_LOG (Table)
--   TNAZSOS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TR_TRESAN_S" 
    AFTER INSERT ON TRESAN_s FOR EACH ROW
DISABLE
declare
    vID  number;
    vStr varchar(2000);
     vTSMIDFK_SMID number;
       vTSMIDFK_BLOBID number;
       vTAMBULANCEFK_PACID number;
       vVNAZFK_NAZID number;
       vTPATNAMEFK_PATID number;
       vTNAZSOSFK_SOS number;
      
  BEGIN
   if PKG_sync.v_is_repl = 0 then
    PKG_sync.v_is_repl := 1;
    if :new.fk_id = 1 then
      delete from TRESAN t where t.fk_guid = :new.fk_guid;
    elsif :new.fk_id = 2 then
      begin
          select t.fk_id into vTSMIDFK_SMID from asu.TSMID t where t.fk_guid = :new.FK_SMIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTSMIDFK_BLOBID from asu.TSMID t where t.fk_guid = :new.FK_BLOBIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTAMBULANCEFK_PACID from asu.TAMBULANCE t where t.fk_guid = :new.FK_PACIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vVNAZFK_NAZID from asu.tnazan t where t.fk_guid = :new.FK_NAZIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTPATNAMEFK_PATID from asu.TPATNAME t where t.fk_guid = :new.FK_PATIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTNAZSOSFK_SOS from asu.TNAZSOS t where t.fk_guid = :new.FK_SOSg;
         exception when others then null;
         end;
        
      update TRESAN set FK_GUID = :new.FK_GUID,FD_INS = :new.FD_INS,FC_RES = :new.FC_RES,FN_RES = :new.FN_RES,FC_TYPE = :new.FC_TYPE,FK_VRACHID = :new.FK_VRACHID,FK_PATNAME = :new.FK_PATNAME,FC_COMENT = :new.FC_COMENT,FK_COLID = :new.FK_COLID,FL_ZAKL = :new.FL_ZAKL,FL_PATFIRST = :new.FL_PATFIRST,FN_RES2 = :new.FN_RES2, FK_BLOBID2 = :new.FK_BLOBID2, FK_BLOBID3 = :new.FK_BLOBID3,FK_SMID = vTSMIDFK_SMID,FK_BLOBID = vTSMIDFK_BLOBID,FK_PACID = vTAMBULANCEFK_PACID,FK_NAZID = vVNAZFK_NAZID,FK_PATID = vTPATNAMEFK_PATID,FK_SOS = vTNAZSOSFK_SOS
      where fk_guid = :new.fk_guid;
    elsif :new.fk_id = 0 then
      begin
          select t.fk_id into vTSMIDFK_SMID from asu.TSMID t where t.fk_guid = :new.FK_SMIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTSMIDFK_BLOBID from asu.TSMID t where t.fk_guid = :new.FK_BLOBIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTAMBULANCEFK_PACID from asu.TAMBULANCE t where t.fk_guid = :new.FK_PACIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vVNAZFK_NAZID from asu.tnazan t where t.fk_guid = :new.FK_NAZIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTPATNAMEFK_PATID from asu.TPATNAME t where t.fk_guid = :new.FK_PATIDg;
         exception when others then null;
         end;
        begin
          select t.fk_id into vTNAZSOSFK_SOS from asu.TNAZSOS t where t.fk_guid = :new.FK_SOSg;
         exception when others then null;
         end;
        
        insert into TRESAN(FK_ID,FK_GUID,FD_INS,FC_RES,FN_RES,FC_TYPE,FK_VRACHID,FK_PATNAME,FC_COMENT,FK_COLID,FL_ZAKL,FL_PATFIRST,FN_RES2,FK_BLOBID2,FK_BLOBID3,FK_SMID,FK_BLOBID,FK_PACID,FK_NAZID,FK_PATID,FK_SOS)
             values (seq_tkarta.nextval,:new.FK_GUID,:new.FD_INS,:new.FC_RES,:new.FN_RES,:new.FC_TYPE,:new.FK_VRACHID,:new.FK_PATNAME,:new.FC_COMENT,:new.FK_COLID,:new.FL_ZAKL,:new.FL_PATFIRST,:new.FN_RES2,:new.FK_BLOBID2,:new.FK_BLOBID3,vTSMIDFK_SMID,vTSMIDFK_BLOBID,vTAMBULANCEFK_PACID,vVNAZFK_NAZID,vTPATNAMEFK_PATID,vTNAZSOSFK_SOS);
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


