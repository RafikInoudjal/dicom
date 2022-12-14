DO $$
BEGIN
  if     exists (SELECT 1
                   FROM information_schema.tables t
                  WHERE t.table_schema = 'mir'
                    and table_name='presctype'
                    and table_type='BASE TABLE') then

    if not exists (SELECT 1
                     FROM information_schema.columns t
                    WHERE t.table_schema = 'mir'
                      and t.table_name='presctype'
                      and t.column_name = 'dicom_pr') then

      ALTER TABLE mir.presctype
        ADD COLUMN dicom_pr varchar(1);

      COMMENT ON COLUMN mir.presctype.dicom_pr
      IS 'Признак использования DICOM для назначения (worklist, MPPS) ("1")';
    end if;

    if not exists (SELECT 1
                     FROM information_schema.columns t
                    WHERE t.table_schema = 'mir'
                      and t.table_name='presctype'
                      and t.column_name = 'modality') then

      ALTER TABLE mir.presctype
        ADD COLUMN modality varchar(10);

      COMMENT ON COLUMN mir.presctype.modality
      IS 'Модальность исследования (dicom)';
    end if;

  end if;

  if     exists (SELECT 1
                   FROM information_schema.tables t
                  WHERE t.table_schema = 'mir'
                    and table_name='presc'
                    and table_type='BASE TABLE') then

    if not exists (SELECT 1
                     FROM information_schema.columns t
                    WHERE t.table_schema = 'mir'
                      and t.table_name='presc'
                      and t.column_name = 'accessionnumber') then

      ALTER TABLE mir.presc
        ADD COLUMN accessionnumber varchar(100);

      COMMENT ON COLUMN mir.presc.accessionnumber
      IS 'Номер протокола исследования (для PACS/WORKLIST)';
    end if;

  end if;

  if not exists (SELECT 1
                   FROM information_schema.tables t
                  WHERE t.table_schema = 'mir'
                    and table_name='dicom_wl_log'
                    and table_type='BASE TABLE') then

    CREATE TABLE mir.dicom_wl_log (
      oid CHAR(36),
      studydescription VARCHAR,
      runbeg_dt TIMESTAMP(0) WITHOUT TIME ZONE,
      studyuid VARCHAR(100),
      accessionnumber VARCHAR(100),
      stationaetitle VARCHAR(100),
      modality VARCHAR(10),
      stationname VARCHAR(100),
      firstname VARCHAR(100),
      middlename VARCHAR(100),
      lastname VARCHAR(100),
      birthday DATE,
      sex NUMERIC,
      patientid VARCHAR(100),
      patientname VARCHAR(200),
      patientnameeng VARCHAR(200),
      create_date TIMESTAMP WITHOUT TIME ZONE,
      faction VARCHAR(100),
      systext VARCHAR(100),
      errorcode NUMERIC,
      errortext VARCHAR(100),
      prescid CHAR(36),
      presctypeid CHAR(36),
      patientoid CHAR(36),
      lpu VARCHAR(36)
    ) WITHOUT OIDS;

    COMMENT ON COLUMN mir.dicom_wl_log.oid
    IS 'ключ';

    COMMENT ON COLUMN mir.dicom_wl_log.studydescription
    IS 'описание исследования';

    COMMENT ON COLUMN mir.dicom_wl_log.runbeg_dt
    IS 'дата назначения исследования';

    COMMENT ON COLUMN mir.dicom_wl_log.studyuid
    IS 'studyuid исследования';

    COMMENT ON COLUMN mir.dicom_wl_log.accessionnumber
    IS 'номер протокола исследования';

    COMMENT ON COLUMN mir.dicom_wl_log.stationaetitle
    IS 'aetitle станции';

    COMMENT ON COLUMN mir.dicom_wl_log.modality
    IS 'модальность';

    COMMENT ON COLUMN mir.dicom_wl_log.stationname
    IS 'наименование станции';

    COMMENT ON COLUMN mir.dicom_wl_log.birthday
    IS 'дата рожденья пациента';

    COMMENT ON COLUMN mir.dicom_wl_log.sex
    IS 'пол';

    COMMENT ON COLUMN mir.dicom_wl_log.patientid
    IS 'номер медкарты пациента';

    COMMENT ON COLUMN mir.dicom_wl_log.patientname
    IS 'ФИО пациента';

    COMMENT ON COLUMN mir.dicom_wl_log.patientnameeng
    IS 'ФИО пациента (англ транслитерация)';

    COMMENT ON COLUMN mir.dicom_wl_log.create_date
    IS 'дата создания';

    COMMENT ON COLUMN mir.dicom_wl_log.faction
    IS 'действие при выполнение которого произошла ошибка';

    COMMENT ON COLUMN mir.dicom_wl_log.systext
    IS 'описание';

    COMMENT ON COLUMN mir.dicom_wl_log.errorcode
    IS 'код ошибки
    -1 - просто ошибка при выполнении';

    COMMENT ON COLUMN mir.dicom_wl_log.errortext
    IS 'текст ошибки';

    COMMENT ON COLUMN mir.dicom_wl_log.prescid
    IS 'id назначения';

    COMMENT ON COLUMN mir.dicom_wl_log.presctypeid
    IS 'id типа назначения';

    COMMENT ON COLUMN mir.dicom_wl_log.patientoid
    IS 'OID пациента (peoples)';

	DROP TRIGGER IF EXISTS dicom_wl_log_tr ON mir.dicom_wl_log;

    DROP FUNCTION IF EXISTS "mir"."dicom_wl_log_trigger_after"();

    CREATE OR REPLACE FUNCTION mir.dicom_wl_log_trigger_after (
    )
    RETURNS trigger AS
    $body$
    BEGIN
      new.oid = public.generate_uuid_v4();
      new.create_date = now();
      if (new.errorcode is null) then
        new.errorcode = -1;
      end if;
      return NEW;
    END;
    $body$
    LANGUAGE 'plpgsql'
    VOLATILE
    CALLED ON NULL INPUT
    SECURITY INVOKER
    COST 100;

    CREATE TRIGGER dicom_wl_log_tr
      AFTER INSERT
      ON mir.dicom_wl_log FOR EACH ROW
      EXECUTE PROCEDURE mir.dicom_wl_log_trigger_after();

  end if;

  if not exists (SELECT 1
                   FROM information_schema.tables t
                  WHERE t.table_schema = 'mir'
                    and table_name='dicom_wl_buffer'
                    and table_type='BASE TABLE') then
	CREATE TABLE mir.dicom_wl_buffer (
      oid CHAR(36),
      create_date TIMESTAMP WITHOUT TIME ZONE,
      studydescription VARCHAR,
      runbeg_dt TIMESTAMP(0) WITHOUT TIME ZONE,
      studyuid VARCHAR(100),
      accessionnumber VARCHAR(100),
      stationaetitle VARCHAR(100),
      modality VARCHAR(10),
      stationname VARCHAR(100),
      firstname VARCHAR(100),
      middlename VARCHAR(100),
      lastname VARCHAR(100),
      birthday DATE,
      sex NUMERIC,
      patientid VARCHAR(100),
      patientname VARCHAR(200),
      patientnameeng VARCHAR(200),
      faction VARCHAR(100),
      prescid CHAR(36),
      presctypeid CHAR(36),
      patientoid CHAR(36),
      systext VARCHAR(100),
      lpu VARCHAR(36)
    ) WITHOUT OIDS;

    COMMENT ON COLUMN mir.dicom_wl_buffer.oid
    IS 'ключ';

    COMMENT ON COLUMN mir.dicom_wl_buffer.studydescription
    IS 'описание исследования';

    COMMENT ON COLUMN mir.dicom_wl_log.runbeg_dt
    IS 'дата назначения исследования';

    COMMENT ON COLUMN mir.dicom_wl_buffer.studyuid
    IS 'studyuid исследования';

    COMMENT ON COLUMN mir.dicom_wl_buffer.accessionnumber
    IS 'номер протокола исследования';

    COMMENT ON COLUMN mir.dicom_wl_buffer.stationaetitle
    IS 'aetitle станции';

    COMMENT ON COLUMN mir.dicom_wl_buffer.modality
    IS 'модальность';

    COMMENT ON COLUMN mir.dicom_wl_buffer.stationname
    IS 'наименование станции';

    COMMENT ON COLUMN mir.dicom_wl_buffer.birthday
    IS 'дата рожденья пациента';

    COMMENT ON COLUMN mir.dicom_wl_buffer.sex
    IS 'пол';

    COMMENT ON COLUMN mir.dicom_wl_buffer.patientid
    IS 'номер медкарты пациента';

    COMMENT ON COLUMN mir.dicom_wl_buffer.patientname
    IS 'ФИО пациента';

    COMMENT ON COLUMN mir.dicom_wl_buffer.patientnameeng
    IS 'ФИО пациента (англ транслитерация)';

    COMMENT ON COLUMN mir.dicom_wl_buffer.create_date
    IS 'дата создания';

    COMMENT ON COLUMN mir.dicom_wl_buffer.faction
    IS 'действие при выполнение которого произошла ошибка';

    COMMENT ON COLUMN mir.dicom_wl_buffer.systext
    IS 'описание';

    COMMENT ON COLUMN mir.dicom_wl_buffer.prescid
    IS 'id назначения';

    COMMENT ON COLUMN mir.dicom_wl_buffer.presctypeid
    IS 'id типа назначения';

    COMMENT ON COLUMN mir.dicom_wl_buffer.patientoid
    IS 'OID пациента (peoples)';

    DROP TRIGGER IF EXISTS dicom_wl_buffer_tr ON mir.dicom_wl_buffer;

    DROP FUNCTION IF EXISTS "mir"."dicom_wl_buffer_trigger_before"();

    CREATE OR REPLACE FUNCTION mir.dicom_wl_buffer_trigger_before (
    )
    RETURNS trigger AS
    $body$
    BEGIN
      new.oid = public.generate_uuid_v4();
      new.create_date = now();
      return NEW;
    END;
    $body$
    LANGUAGE 'plpgsql'
    VOLATILE
    CALLED ON NULL INPUT
    SECURITY INVOKER
    COST 100;

    CREATE TRIGGER dicom_wl_buffer_tr
      BEFORE INSERT
      ON mir.dicom_wl_buffer FOR EACH ROW
      EXECUTE PROCEDURE mir.dicom_wl_buffer_trigger_before();

    CREATE INDEX dicom_wl_buffer_idx ON mir.dicom_wl_buffer
      USING btree (prescid COLLATE pg_catalog."default");

    CREATE INDEX dicom_wl_buffer_idx1 ON mir.dicom_wl_buffer
      USING btree (create_date);

    CREATE INDEX dicom_wl_buffer_idx2 ON mir.dicom_wl_buffer
      USING btree (runbeg_dt);


  end if;

  DROP TRIGGER IF EXISTS presc_dicom_update_tr ON mir.presc;
  DROP FUNCTION IF EXISTS "mir"."presc_dicom_wl_buffer_tr"();

  CREATE OR REPLACE FUNCTION mir.presc_dicom_wl_buffer_tr (
  )
  RETURNS trigger AS
  $body$
  DECLARE
    v_id CHAR(36);
    v_modality varchar(10);
    v_dicom_pr varchar(1);
    v_studydescription varchar;
    v_firstname varchar(100);
    v_middlename varchar(100);
    v_lastname varchar(100);
    v_birthday DATE;
    v_sex NUMERIC;
    v_patientid varchar;
    vSexWL varchar(1);
    vPatientName varchar(200);
    vPatientNameENG varchar(200);
    vStudyUID varchar(100) ;
    vAccessionNumber varchar(100) ;
    vpresctypeoid CHAR(36);
    vpeopleoid CHAR(36);
    c record;
  BEGIN
    v_dicom_pr = '0';
    -- цикл по курсору
    -- тип назначения
    for c in ( select nvl(p2.dicom_pr,'0') as dicom_pr,
      p2.modality, p2.name as studydescription,
      pl.firstname, pl.middlename, pl.lastname,
      pl.birthday, pl.sex,
      mir.mdoc_get_num(md.id) as patientid,
      p2.oid as presctypeoid,
      pl.oid as peopleoid
      from mir.presctype p2, mir.mdoc md, mir.people pl
      where p2.oid=new.presctype_id
      and md.id=new.mdoc_id and md.people_id=pl.oid )
    loop
      v_dicom_pr = c.dicom_pr ;
      v_modality = c.modality ;
      v_studydescription = c.studydescription ;
      v_firstname = c.firstname ;
      v_middlename = c.middlename ;
      v_lastname = c.lastname ;
      v_birthday = c.birthday ;
      v_sex = c.sex ;
      v_patientid = c.patientid ;
      vpresctypeoid = c.presctypeoid ;
      vpeopleoid = c.peopleoid ;
    end loop;
    --
    IF ((TG_OP = 'INSERT') and (v_dicom_pr='1')) THEN
      v_id=new.id;

      vPatientName = v_firstname || ' ' || v_middlename || ' ' || v_lastname;
      vPatientNameENG = upper( replace(replace(replace(replace(
                        replace(replace(replace(replace(replace(replace(replace(replace(
                        replace(replace( translate(upper(vPatientName),
                        'абвгдезийклмнопрстуфхцъыьэАБВГДЕЗИЙКЛМНОПРСТУФХЦЪЫЬЭ',
                        'abvgdezijklmnoprstufhcjijeABVGDEZIJKLMNOPRSTUFHCJIJE'),
                        'ё', 'yo'),'ж', 'zh'),'ч', 'ch'),'ш', 'sh'),'щ', 'sch'),'ю', 'yu'),
                        'я', 'ya'),'Ё', 'Yo'),'Ж', 'Zh'),'Ч', 'Ch'),'Ш', 'Sh'),'Щ', 'Sch'),
                        'Ю', 'Yu'),'Я', 'Ya') );
      if (v_sex = '2')
      then
          vSexWL = 'M';
      else
          vSexWL = 'F';
      end if;
      vAccessionNumber = to_char(now(),'YYYY') || '.'  || to_char(now(),'MM') || '.' ||
                          to_char(now(),'DD') || '.' || to_char(now(),'HH24') || '.' ||
                          to_char(now(),'MI') || '.' || to_char(now(),'SS') || '.' ||
                          to_char(now(),'MS') || '.' || to_char(now(),'US') || trim(to_char(random(),'9.9999999999'));
      vStudyUID = vAccessionNumber;

      update mir.presc set accessionnumber=vAccessionNumber where id=new.id;
    --  new.accessionnumber = vAccessionNumber;
      insert into mir.dicom_wl_buffer (
        studydescription, runbeg_dt, studyuid, accessionnumber,
        stationaetitle, modality, stationname, firstname,
        middlename, lastname, birthday, sex,
        patientid, patientname, patientnameeng, faction,
        prescid, presctypeid, patientoid, systext
      ) values (
        v_studydescription,
        new.runbeg_dt,
        vstudyuid,
        vAccessionNumber,
        '', -- stationaetitle VARCHAR(100),
        v_modality,
        '', -- stationname VARCHAR(100),
        v_firstname,
        v_middlename,
        v_lastname,
        v_birthday,
        v_sex,
        v_patientid,
        vPatientName,
        vPatientNameENG,
        'trigger presc_dicom_wl_buffer_tr on mir.presc '||TG_OP||' action',
        new.id,
        vpresctypeoid,
        vpeopleoid,
        '' -- systext
      );
    ELSIF ((TG_OP = 'UPDATE') and (v_dicom_pr='1')) THEN
      if (new.accessionnumber<>old.accessionnumber) then
        update mir.dicom_wl_buffer t
          set t.accessionnumber=new.accessionnumber
        where t.prescid=new.id;
      end if;
    ELSIF ((TG_OP = 'DELETE') and (v_dicom_pr='1')) THEN
      delete from mir.dicom_wl_buffer t
      where t.prescid=new.id;
      return OLD;
    end if;
    return NEW;
  EXCEPTION
  WHEN OTHERS THEN
    begin
      insert into mir.dicom_wl_log (
          studydescription,runbeg_dt,studyuid,
          accessionnumber,stationaetitle,modality,stationname,
          firstname,middlename,lastname,birthday,
          sex,patientid,patientname,patientnameeng,
          faction,systext,errorcode,
          errortext,prescid,presctypeid,patientoid
        ) values (
          v_studydescription,
          new.runbeg_dt,
          vstudyuid,
          vAccessionNumber,
          '', -- stationaetitle VARCHAR(100),
          v_modality,
          '', -- stationname VARCHAR(100),
          v_firstname,
          v_middlename,
          v_lastname,
          v_birthday,
          v_sex,
          v_patientid,
          vPatientName,
          vPatientNameENG,
          'trigger presc_dicom_wl_buffer_tr on mir.presc '||TG_OP||' action',  -- action VARCHAR(100)
          '', -- systext VARCHAR(100),
          -1, -- errorcode NUMERIC,
          SQLERRM, -- errortext VARCHAR(100),
          new.id,
          vpresctypeoid,
          vpeopleoid
        );
      return NEW;
    exception when others then
      return NEW;
    end;
  END;
  $body$
  LANGUAGE 'plpgsql'
  VOLATILE
  CALLED ON NULL INPUT
  SECURITY INVOKER
  COST 100;

  CREATE TRIGGER presc_dicom_update_tr
  AFTER INSERT OR UPDATE OR DELETE
  ON mir.presc FOR EACH ROW
  EXECUTE PROCEDURE mir.presc_dicom_wl_buffer_tr();

END;
$$