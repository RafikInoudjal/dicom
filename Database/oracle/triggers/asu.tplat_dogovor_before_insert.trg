DROP TRIGGER ASU.TPLAT_DOGOVOR_BEFORE_INSERT
/

--
-- TPLAT_DOGOVOR_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TKARTA (Sequence)
--   PKG_PLATUSLUG (Package)
--   TPLAT_DOGOVOR (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPLAT_DOGOVOR_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TPLAT_DOGOVOR  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
  SELECT SEQ_TKARTA.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  SELECT PKG_PLATUSLUG.GET_NEWDOCNUM INTO :NEW.FC_NUM FROM DUAL;
END;
/
SHOW ERRORS;


