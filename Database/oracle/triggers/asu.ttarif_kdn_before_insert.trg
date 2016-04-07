DROP TRIGGER ASU.TTARIF_KDN_BEFORE_INSERT
/

--
-- TTARIF_KDN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TTARIF_KDN (Sequence)
--   TTARIF_KDN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TTARIF_KDN_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TTARIF_KDN REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TTARIF_KDN.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


