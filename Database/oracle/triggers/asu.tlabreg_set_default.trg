DROP TRIGGER ASU.TLABREG_SET_DEFAULT
/

--
-- TLABREG_SET_DEFAULT  (Trigger) 
--
--  Dependencies: 
--   TLABREG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLABREG_SET_DEFAULT" 
  BEFORE INSERT ON ASU.TLABREG   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  /*by TimurLan SELECT GET_DEFAULT_FROM_SMID(GET_LAB_RAZD(GET_SMIDFROMNAZ(:NEW.FK_NAZID)))
    INTO :NEW.FK_DEFAULT
    FROM DUAL;*/
  NULL;
End;
/
SHOW ERRORS;


