DROP TRIGGER ASU.TREPORTSPREF_BEFORE_INSERT
/

--
-- TREPORTSPREF_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TREPORTSPREF (Sequence)
--   TREPORTSPREF (Table)
--
CREATE OR REPLACE TRIGGER ASU."TREPORTSPREF_BEFORE_INSERT" 
             BEFORE
             INSERT
             ON ASU.TREPORTSPREF              REFERENCING OLD AS Old NEW AS New
             FOR EACH ROW
Begin
              SELECT SEQ_TREPORTSPREF.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
            End;
/
SHOW ERRORS;


