CREATE OR REPLACE PROCEDURE ASU.SET_FLU_TALON_SOTR_ISPOL(PNAZID   IN NUMBER,
                                                     PISPOLID IN NUMBER) IS
--added by Melnikov 2015.07.27 #31769
  TALONID NUMBER;
  NTMP    NUMBER;
  CURSOR CTALONID IS
    SELECT FK_TALONID FROM ASU.TAMBTALON_NAZ WHERE FK_NAZID = PNAZID;
  CURSOR CCOMENT IS
    SELECT 1
      FROM ASU.TAMBTALON A
     WHERE FK_ID = TALONID
       AND A.FC_TALON_COMMENT = 'SET_SOTR_AS_ISPOL_FROM_NAZ';
BEGIN
  OPEN CTALONID;
  FETCH CTALONID
    INTO TALONID;
  IF CTALONID%NOTFOUND THEN
    TALONID := -1;
  END IF;
  CLOSE CTALONID;

  IF TALONID > -1 THEN
    OPEN CCOMENT;
    FETCH CCOMENT
      INTO NTMP;
    IF CCOMENT%FOUND THEN
      UPDATE ASU.TAMBTALON A
         SET A.FK_SOTRID = PISPOLID, A.FK_SOTRCLOSED = PISPOLID
       WHERE FK_ID = TALONID;
    END IF;
    CLOSE CCOMENT;
  END IF;
END;