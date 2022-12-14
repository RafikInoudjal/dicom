DROP PACKAGE BODY ASU.PKG_ACTION
/

--
-- PKG_ACTION  (Package Body) 
--
CREATE OR REPLACE PACKAGE BODY ASU."PKG_ACTION" 
IS
   FUNCTION DO_INSERT_CLOB(PSTR IN VarChar2, PCOMMENT IN VarChar2) RETURN NUMBER IS
    pFK_ID NUMBER;
    pClob CLOB;
   BEGIN
        pCLOB := VARCHAR_TO_CLOB(PSTR);
        INSERT INTO TCLOBS(FC_CLOB, FC_COMMENT) VALUES(pCLOB, pCOMMENT) RETURNING FK_ID INTO pFK_ID;
        RETURN PFK_ID;
   END;

   PROCEDURE DO_INSERT_TIME(PFK_ACTION in INTEGER, PFD_DATE in DATE, PFC_ITERATIVE IN VARCHAR) IS
   BEGIN
        INSERT INTO TACTIONTIME(FK_ACTIONID, FD_DATE, FK_SOTRID, FL_DEL) VALUES(pFK_ACTION, TO_DATE(TO_CHAR(PFD_DATE,'dd.mm.yyyy'), 'dd.mm.yyyy') , -1, 0);
        UPDATE TACTION
        SET FC_ITERATIVE = PFC_ITERATIVE
        WHERE FK_ID = PFK_ACTION;
   END;

   FUNCTION DO_INSERT_ACTION(pFC_CAPTION in VARCHAR, pFC_CLOB in VARCHAR) RETURN INTEGER IS
    pFK_CLOB NUMBER;
    pFK_ID NUMBER;
   BEGIN
      pFK_CLOB := DO_INSERT_CLOB(pFC_CLOB, '');
      INSERT INTO TACTION
             (FC_CAPTION, FK_CLOB, FL_DEL)
              VALUES (pFC_CAPTION, pFK_CLOB, 0) RETURNING FK_ID INTO pFK_ID;
      RETURN pFK_ID;
   END;


   PROCEDURE DO_UPDATE_ACTION(pFK_ID in INTEGER, pFC_CAPTION in VARCHAR) IS
   BEGIN
      UPDATE TACTION
      SET FC_CAPTION = pFC_CAPTION
      WHERE fk_id = pfk_id;
   END;

FUNCTION  DO_SELECT_Action(pFK_ID in INTEGER) RETURN VARCHAR2 IS
  strTemp VARCHAR2(32767);
  clobTemp CLOB;
  len INTEGER;
  CURSOR cTemp IS SELECT FC_CLOB FROM TCLOBS where fk_id = pFK_ID;
BEGIN
  if pFK_ID>0 THEN
    OPEN cTemp;
    FETCH cTemp INTO clobTemp;
    CLOSE cTemp;
  ELSE
    RETURN NULL;
  END IF;
  len  := DBMS_LOB.GETLENGTH(clobTemp);
  DBMS_LOB.READ(clobTemp, len,1,strTemp);
  RETURN strTemp;
END;


FUNCTION DO_SELECT_DATE_START(pFK_ACTIONID in NUMBER) RETURN VARCHAR2 IS
strOut Varchar2(20);
CURSOR cTemp is SELECT TO_CHAR(min(fd_date), 'dd.mm.yyyy') FROM tactiontime where FK_ACTIONID = pFK_ACTIONID AND FL_DEL = 0;
BEGIN
    OPEN cTemp;
    FETCH cTemp INTO strOut;
    CLOSE cTemp;
    RETURN strOut;
END;

FUNCTION DO_SELECT_DATE_END(pFK_ACTIONID in NUMBER) RETURN VARCHAR2 IS
strOut Varchar2(20);
CURSOR cTemp is SELECT TO_CHAR (max(fd_date), 'dd.mm.yyyy') FROM tactiontime where FK_ACTIONID = pFK_ACTIONID;
BEGIN
    OPEN cTemp;
    FETCH cTemp INTO strOut;
    CLOSE cTemp;
    RETURN strOut;
END;

PROCEDURE DO_ADD_SOTR_TO_ACTION(PACTIONID IN NUMBER, PSOTRID IN NUMBER) IS
BEGIN
    INSERT INTO TACTIONTIME (FK_ACTIONID, FK_SOTRID, FD_DATE, FL_DEL)
    SELECT PACTIONID AS FK_ACTIONID, t1.FK_ID AS FK_SOTRID, FD_DATE, 0 AS FL_DEL
    FROM LOGIN.TSOTR t1, TACTIONTIME t2
    WHERE t1.FL_DEL = 0
          AND t1.FK_ID = PSOTRID
          AND t2.FK_SOTRID = -1
          AND t2.FK_ACTIONID = PACTIONID
          AND t2.FL_DEL = 0
          AND NOT EXISTS(SELECT FK_ACTIONID, FK_SOTRID FROM TACTIONTIME WHERE FK_SOTRID = t1.FK_ID AND FK_ACTIONID = PACTIONID AND FL_DEL = 0 AND FD_READ IS NULL  );
    COMMIT;
END;

PROCEDURE DO_ADD_SOTR_GROUP_TO_ACTION(PACTIONID IN NUMBER, pSOTRID IN NUMBER) IS
BEGIN
    INSERT INTO TACTIONTIME (FK_ACTIONID, FK_SOTRID, FD_DATE, FL_DEL)
    SELECT PACTIONID AS FK_ACTIONID, t1.FK_ID AS FK_SOTRID, FD_DATE, 0 AS FL_DEL
    FROM LOGIN.TSOTR t1, TACTIONTIME t2
    WHERE t1.FL_DEL = 0
          AND FK_OTDELID = PSOTRID
          AND t1.FL_DEL = 0
          AND t2.FK_SOTRID = -1
          AND t2.FK_ACTIONID = PACTIONID
          AND NOT EXISTS(SELECT FK_ACTIONID, FK_SOTRID FROM TACTIONTIME WHERE FK_SOTRID = t1.FK_ID AND FK_ACTIONID = PACTIONID AND FL_DEL = 0);
    COMMIT;
END;

PROCEDURE DO_DEL_SOTR_FROM_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER) IS
BEGIN
    UPDATE TACTIONTIME
    SET FL_DEL = 1
    WHERE FK_ACTIONID = pActionID AND FK_SOTRID = pSotrID;
    COMMIT;
END;

PROCEDURE DO_DEL_ACTION(pActionID IN NUMBER) IS
BEGIN
    UPDATE TACTION
    SET FL_DEL = 1
    WHERE FK_ID = pActionID;
    UPDATE TACTIONTIME
    SET FL_DEL = 1
    WHERE FK_ACTIONID = pActionID AND FD_READ IS NULL;
    COMMIT;
END;

PROCEDURE DO_DEL_ACTION_TIME(pActionID IN NUMBER) IS
BEGIN
    UPDATE TACTIONTIME
    SET FL_DEL = 1
    WHERE FK_ACTIONID = pActionID AND FD_READ IS NULL;
END;

FUNCTION CHECK_CURRENT_DATE(pActionID IN NUMBER, pSotrID IN NUMBER) RETURN DATE IS
    cDateTime DATE;
    CURSOR cDATE IS
        SELECT MAX(FD_DATE)
        FROM TACTIONTIME
        WHERE FK_ACTIONID = pActionID
              AND FK_SOTRID = pSotrID
              AND FD_READ IS NULL
              AND TRUNC(FD_DATE,'dd') <= (SELECT TRUNC(SYSDATE,'dd') from dual);
BEGIN
    OPEN cDATE;
    FETCH cDATE INTO cDateTime;
    CLOSE cDATE;

    IF cDateTime IS NOT NULL THEN
        RETURN TO_DATE(cDateTime, 'dd.mm.yyyy');
    END IF;
    RETURN null;
END;

PROCEDURE DO_READ_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER, pDate IN DATE) IS
BEGIN
      UPDATE TACTIONTIME
      SET FD_READ = (SELECT TO_DATE(TO_CHAR(SYSDATE,'dd.mm.yyyy'), 'dd.mm.yyyy') from dual)
      WHERE FK_ACTIONID = pActionID
            AND FK_SOTRID = pSotrID
            AND FD_READ IS NULL
            AND TRUNC(FD_DATE,'dd') <= (SELECT TRUNC(SYSDATE,'dd') from dual);
      COMMIT;
END;

PROCEDURE DO_DEL_READ_ACTION(pActionID IN NUMBER, pSotrID IN NUMBER, pFK_CLOBID IN NUMBER) IS
BEGIN
    UPDATE TACTIONTIME
    SET FL_DEL = 1
    WHERE FK_ACTIONID = pActionID
          AND FK_SOTRID = pSotrID
          AND FK_CLOBID = pFK_CLOBID
          AND FD_READ is not null
          AND FL_DEL = 0;
    COMMIT;
END;

FUNCTION DO_INSERT_SQL RETURN NUMBER IS
    pFK_ID NUMBER;
BEGIN
    INSERT INTO TACTIONSQL (FL_DEL) VALUES (0) RETURNING FK_ID INTO pFK_ID;
    RETURN pFK_ID;

END;

PROCEDURE DO_UPDATE_SQL(pFK_ID IN NUMBER, pFC_CAPTION IN VARCHAR2, pFC_SQL IN VARCHAR2) IS
BEGIN
    UPDATE TACTIONSQL
    SET FC_CAPTION = pFC_CAPTION,
        FC_SQL = pFC_SQL
    WHERE FK_ID = pFK_ID;
END;

PROCEDURE DO_DEL_SQL(pFK_ID IN NUMBER) IS
BEGIN
    UPDATE TACTIONSQL
    SET FL_DEL = 1
    WHERE FK_ID = pFK_ID;
END;

PROCEDURE DO_SET_DEFAULT_CLOB(pActionID IN NUMBER, pSotrID IN NUMBER) IS
BEGIN
    UPDATE TACTIONTIME
    SET FK_CLOBID = (SELECT FK_CLOB FROM TACTION WHERE FK_ID = pActionID)
    WHERE FK_ACTIONID = pActionID
          AND FK_SOTRID = pSotrID
          AND FD_READ IS NULL
          AND TRUNC(FD_DATE,'dd') <= (SELECT TRUNC(SYSDATE,'dd') from dual);
    COMMIT;
END;

procedure DO_DEL_ITER(pActionID IN NUMBER, pSotrID IN NUMBER) IS
BEGIN
update TACTIONTIME
SET FL_DEL = 1
WHERE
    FK_SOTRID = pSotrID
    And FK_ACTIONID = pActionID
    AND FD_READ IS NOT NULL
    AND FD_DATE <> (select MAX(FD_DATE) from TACTIONTIME WHERE FK_ACTIONID = pActionID
              AND FK_SOTRID = pSotrID
              AND FD_READ IS NOT NULL);
    COMMIT;
END;


procedure Do_SET_ACTION_TO_ALL(pActionID IN NUMBER) IS
  CURSOR cPEPL IS
  SELECT FK_ID FROM LOGIN.TSOTR WHERE FK_PEPLID IS NOT NULL;
BEGIN
  for p in cPEPL loop
      DO_ADD_SOTR_TO_ACTION(pActionID, p.FK_ID);
  end loop;
END;

PROCEDURE INSERT_ACTION_TO_ALL(pCapSTR IN VARCHAR, pTextSTR IN VARCHAR, pDate IN DATE) IS
 iFK_ID NUMBER;
BEGIN
    INSERT INTO TCLOBS (FC_CLOB) VALUES ( VARCHAR_TO_CLOB(pTextSTR) ) RETURNING FK_ID into iFK_ID;
    INSERT INTO TACTION (FC_CAPTION, FL_DEL, FK_CLOB) VALUES ( pCapSTR, 0, iFK_ID) RETURNING FK_ID into iFK_ID;
    DO_INSERT_TIME(iFK_ID, pDate, 'iaiie?aoii');
    Do_SET_ACTION_TO_ALL(iFK_ID);
END;

/* Formatted on 2007/06/01 16:54 (Formatter Plus v4.8.7) */
FUNCTION do_replace_action_without_time (pfk_id IN NUMBER)
   RETURN NUMBER
IS
   ifk_id     NUMBER;
   ifk_clob   NUMBER;
   cClob CLOB;
   cCap VARCHAR(200);
   CURSOR cCl is SELECT fc_clob FROM tclobs  WHERE fk_id = (SELECT fk_clob FROM taction WHERE fk_id = pfk_id);
   CURSOR cCp is SELECT fc_caption FROM taction WHERE fk_id = pfk_id;
BEGIN
   OPEN cCl;
   FETCH cCl INTO cClob;
   CLOSE cCl;
   INSERT INTO tclobs(fc_clob) VALUES (cClob) RETURNING fk_id INTO ifk_clob;

   OPEN cCp;
   FETCH cCp INTO cCap;
   CLOSE cCp;
   INSERT INTO taction (fc_caption, fk_clob, fl_del) VALUES (cCap, ifk_clob, 0) RETURNING fk_id INTO ifk_id;

   UPDATE taction
      SET fl_del = 1
    WHERE fk_id = pfk_id;

   RETURN ifk_id;
END;


FUNCTION DO_REPLACE_ACTION_WITH_TIME(pFK_ID IN NUMBER) RETURN NUMBER IS
iFK_ID NUMBER;
iFK_CLOB NUMBER;
   cClob CLOB;
   cCap VARCHAR(200);
   cIter VARCHAR(20);
   CURSOR cCl is SELECT fc_clob FROM tclobs  WHERE fk_id = (SELECT fk_clob FROM taction WHERE fk_id = pfk_id);
   CURSOR cCp is SELECT fc_caption FROM taction WHERE fk_id = pfk_id;
   CURSOR cIt is SELECT FC_ITERATIVE FROM taction WHERE fk_id = pfk_id;
  CURSOR cTIME IS
  SELECT pFK_ID AS FK_ACTIONID, FD_DATE, FK_SOTRID, 0 AS FL_DEL
  FROM TACTIONTIME
  WHERE FK_ACTIONID = pFK_ID AND FL_DEL = 0 AND FD_READ IS NULL AND TRUNC(FD_DATE,'dd') >= (SELECT TRUNC(SYSDATE,'dd') from dual);
BEGIN
   OPEN cCl;
   FETCH cCl INTO cClob;
   CLOSE cCl;
   INSERT INTO tclobs(fc_clob) VALUES (cClob) RETURNING fk_id INTO ifk_clob;

   OPEN cCp;
   FETCH cCp INTO cCap;
   CLOSE cCp;
   OPEN cIt;
   FETCH cIt INTO cIter;
   CLOSE cIt;

   INSERT INTO taction (fc_caption, fk_clob, fl_del, FC_ITERATIVE) VALUES (cCap, ifk_clob, 0, cIter) RETURNING fk_id INTO ifk_id;
    for p in cTIME loop
        INSERT INTO TACTIONTIME (FK_ACTIONID, FD_DATE, FK_SOTRID, FL_DEL) VALUES(iFK_ID, p.FD_DATE, p.FK_SOTRID, 0);
    end loop;
    UPDATE TACTIONTIME SET FL_DEL = 1 WHERE FK_ACTIONID = pFK_ID AND FL_DEL = 0 AND FD_READ IS NULL AND TRUNC(FD_DATE,'dd') >= (SELECT TRUNC(SYSDATE,'dd') from dual);
    UPDATE TACTION
    SET FL_DEL = 1
    WHERE FK_ID = pFK_ID;
    RETURN iFK_ID;
END;

END;
/

SHOW ERRORS;


