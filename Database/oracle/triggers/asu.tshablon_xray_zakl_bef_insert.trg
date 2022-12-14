DROP TRIGGER ASU.TSHABLON_XRAY_ZAKL_BEF_INSERT
/

--
-- TSHABLON_XRAY_ZAKL_BEF_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSHABLON_XRAY_ZAKL (Sequence)
--   TSHABLON_XRAY_ZAKL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSHABLON_XRAY_ZAKL_BEF_INSERT" 
 BEFORE
  INSERT
 ON asu.tshablon_xray_zakl
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TSHABLON_XRAY_ZAKL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


